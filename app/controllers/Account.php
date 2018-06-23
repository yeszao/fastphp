<?php
namespace app\controllers;

use fastphp\base\Controller;
use app\models\User;

class Account extends Controller
{
    // 登录后的用户
    public $user;


    /**
     * 用户首页
     * @return [type] [description]
     */
    public function index()
    {

    }

    /**
     * 展示登录窗口
     * @return [type] [description]
     */
    public function login()
    {
        $this->assign('title','登录');
        return $this->fetch('/account/login');
    }

    /**
     * 验证登录
     * @return [type] [description]
     */
    public function logining()
    {
        // 验证用户是否已登录
        if( $this->isLogin() ){
            return $this->success(USER_IS_ALREADY_LOGIN, '/');
        }

        // 获取传递过来的参数
        $inputEmail = isset($_POST['email']) ? $_POST['email'] : '';
        $inputPassword = isset($_POST['password']) ? $_POST['password'] : '';

        // 验证参数是否合法
        if(empty($inputEmail)){
            return $this->success(EMAIL_IS_NULL, '/account/login');
        }
        if(empty($inputPassword)){
            return $this->success(PASSWORD_IS_NULL, '/account/login');
        }

        // 通过?占位符传入 $inputEmail 参数
        // 从数据库取出记录
        $this->user = (new User())->where(["email = ?"], [$inputEmail])->select();

        // 验证用户是否已注册
        if(!$this->user){
            return $this->success(USER_IS_NOT_REGISTERED, '/account/login');
        }

         // $hashPasword = password_hash($inputPassword, PASSWORD_DEFAULT);
         $sha1Password = sha1($inputPassword);

        // 验证密码是否正确
        if($this->user['password'] == $sha1Password){
            // 将登录后的用户信息写入session
            $_SESSION['user'] = $this->user;
            return $this->success(LOGIN_SUCCESS, '/schedule/index');
        }else{
            return $this->success(PASSWORD_IS_ERROR, '/account/login');
        }
    }

    /**
     * 用户登出
     * @return [type] [description]
     */
    public function logout()
    {
        if( empty($_SESSION['user']) ) {
            return $this->success(USER_IS_NOT_LOGIN, '/account/login');
        } else {
            session_destroy();
            return $this->success(LOGOUT_SUCCESS, '/account/login');
        }
    }

    /**
     * 展示注册窗口
     * @return [type] [description]
     */
    public function signup()
    {
        $this->assign('title','注册');
        return $this->fetch('/account/signup');
    }

    /**
     * 验证注册
     * @return [type] [description]
     */
    public function signuping()
    {
        // 验证用户是否已登录
        if( $this->isLogin() ){
            return $this->success(USER_IS_ALREADY_LOGIN, '/');
        }

        // 获取传递过来的参数
        $inputEmail = isset($_POST['email']) ? $_POST['email'] : '';
        $inputPassword = isset($_POST['password']) ? $_POST['password'] : '';
        $inputConfirmPassword = isset($_POST['confirmPassword']) ? $_POST['confirmPassword'] : '';
        $inputUserName = isset($_POST['userName']) ? $_POST['userName'] : '';

        // 验证参数是否合法
        if(empty($inputEmail)){
            return $this->success(EMAIL_IS_NULL, '/account/signup');
        }
        if(empty($inputPassword)){
            return $this->success(PASSWORD_IS_NULL, '/account/signup');
        }
        if(empty($inputConfirmPassword)){
            return $this->success(CONFIRMPASSWORD_IS_NULL, '/account/signup');
        }
        if(empty($inputUserName)){
            return $this->success(USERNAME_IS_NULL, '/account/signup');
        }
        if($inputPassword!=$inputConfirmPassword) {
            return $this->success(TWO_PASSWORDS_ARE_NOT_SAME, '/account/signup');
        }

        // 验证用户是否已注册
        $this->user = (new User())->where(["email = ?"], [$inputEmail])->select();
        if($this->user){
            return $this->success(USER_IS_ALREADY_REGISTERED, '/account/login');
        }

        // 加密密码
        // $hashPasword = password_hash($inputPassword, PASSWORD_DEFAULT);
        $sha1Password = sha1($inputPassword);

        // 写入数据库
        $data =['email'     => $inputEmail,
                'password'  => $sha1Password,
                'user_name' => $inputUserName,
                'user_state'=> 'unchecked',
            ];
        $count = (new User)->insert($data);

        // 自动登录，将注册后的用户信息写入session
        $this->user = (new User())->where(["email = ?"], [$inputEmail])->select();
        $_SESSION['user'] = $this->user;

        // 向用户邮箱发送验证链接
        // 此功能需结合user表中state字段来标志是否已验证
        // 后续待开发

        return $this->success(REGISTER_SUCCESS, '/schedule/index');
    }

    /**
     * 验证用户是否已登录
     * @return boolean [description]
     */
    protected function isLogin()
    {
        if(!empty($_SESSION['user']) ){
            $this->user = $_SESSION['user'];
            return true;
        }else{
            return false;
        }
    }

    /**
     * 获取当前用户id
     */
    protected function getUserId()
    {
        if( $this->isLogin() ){
            return $this->user['id'];
        }else{
            return false;
        }
    }

    /**
     * 返回 json 数据 并终止程序
     * @param $status 状态码
     * @param $info 提示信息
     * @param $url 跳转链接
     * @return response 并终止程序
     */
    protected function echoJsonMsg($status = 100, $info = INFO_IS_UNDEFINED, $url = '/') {
        // $this->success(USER_IS_NOT_LOGIN, '/account/login');
        $this->response['status'] = $status;
        $this->response['info'] = $info;
        // 禁止中文编码转义
        echo json_encode( $this->response, JSON_UNESCAPED_UNICODE);
        die();
    }

}