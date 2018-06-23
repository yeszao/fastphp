<?php
namespace app\controllers;

use fastphp\base\Controller;
use app\models\Mood;

class Wall extends Account
{
    protected $response = Array();

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
    public function addMood()
    {
        if( $this->isLogin() ){    //检查登录

            if ( !empty($_POST) ) {  //有参数传递

                $this->mood = $_POST['mood'];

                if ( empty( $this->mood ) ) {
                    $this->response['status'] = 400;
                    $this->response['info'] = "心情为空";//js中弹窗提示
                }
                else{
                    $this->setMood();
                }
            }
        }
        else{
            $this->response['status'] = 400;
            $this->response['info'] = USER_IS_NOT_LOGIN;
        }
        echo json_encode($this->response, JSON_UNESCAPED_UNICODE);//当前返回数据

    }

    /**
     * 设置心情数据库表
     */
    public function setMood() {
        // 写心情
        date_default_timezone_set('PRC');//时区校准

        //每条记录分段
        $data=[
            'content' => $this->mood,
            'create_time' => time(),
            'update_time' => time(),
            'user_name' => $this->user['user_name']   //获取用户ID，user继承自Account
        ];

        // $date_time=date('Y-m-d h:i:s', time());//日期转时间戳

        $result = (new Mood())->insert($data); //写入数据库条数

        if( $result == 0) {
            $this->response['status'] = 400;     //提示信息
            $this->response['info'] = "添加失败";
        } else {
            $this->response['status'] = 200;     //提示信息
            $this->response['info'] = "添加成功";
        }
        $this->response['result'] = $result;
    }



    public function getMoodList()
    {
        // 读取心情墙
        $moodList = (new Mood())->where()->order(['id DESC'])->selectAll();
        if (empty($moodList)) {
            $this->response['status'] = 400;
            $this->response['info'] = "心情墙空空如也~";
        } else {
            $this->response['status'] = 200;
            $this->response['info'] = "获取心情列表成功";
            $this->response['moodList'] = $moodList;
        }
        echo json_encode($this->response, JSON_UNESCAPED_UNICODE);
    }
}