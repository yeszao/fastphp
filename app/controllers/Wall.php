<?php
namespace app\controllers;

use fastphp\base\Controller;
use app\controllers\Account;
use app\models\Mood;

class Wall extends Account
{
    protected $msg = Array();

    /**
     * 心情墙首页
     * @return [type] [description]
     */
    public function index()
    {
        $this->assign('title','心情墙');
        return $this->fetch('/wall/index');
    }

    /**
     * 添加心情
     * 显示全部心情
     * @return [type] [description]
     */
    public function sendMood()
    {
        // 验证用户是否已登录
        if( !$this->isLogin() ) {
            $this->echoJsonMsg(400, USER_IS_NOT_LOGIN, '/account/login');
        }

        // 接收数据
        if( !empty($_POST['mood']) ) {
            $this->mood = $_POST['mood'];
        } else {
            $this->echoJsonMsg(400, "心情为空", '/wall/index');
        }

        // 设置事项
        if( $this->setMood() ) {
            $this->echoJsonMsg(200, "添加心情成功", '/wall/index');
        } else {
            $this->echoJsonMsg(400, "添加心情失败", '/wall/index');
        }
    }

    /**
     * 设置心情数据库表
     */
    private function setMood() {
        // 写心情
        date_default_timezone_set('PRC');//时区校准

        //每条记录分段
        $data=[
            'content' => $this->mood,
            'create_time' => time(),
            'update_time' => time(),
            'user_name' => $_SESSION['user']['user_name']  //获取用户ID，user继承自Account
        ];

        // $date_time=date('Y-m-d h:i:s', time());//日期转时间戳

        $result = (new Mood())->insert($data); //写入数据库条数

        if( $result == 0) {
            // 插入失败
            return false;
        } else {
            return true;
        }
    }

    public function acceptMoodList()
    {
        // 验证用户是否已登录
        if( !$this->isLogin() ) {
            $this->echoJsonMsg(400, USER_IS_NOT_LOGIN, '/account/login');
        }

        // 获取心情列表
        $this->msg['moodList'] = $this->getMoodList();
        // 判断心情列表是否为空
        if( empty($this->msg['moodList']) ) {
            $this->echoJsonMsg(200, "心情墙空空如也", '#');
        } else {
            // 成功获取心情列表
            $this->echoJsonMsg(200, "获取心情列表成功", '#');
        }

    }

    private function getMoodList()
    {
        // 读取心情墙
        $moodList = (new Mood())->where()->order(['id DESC'])->selectAll();
        return $moodList;
    }
}
