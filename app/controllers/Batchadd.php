<?php
namespace app\controllers;

use fastphp\base\Controller;
use app\controllers\Account;
use app\models\Tag;
use app\models\Item;
use app\models\Template;

class Batchadd extends Account
{
    // 标签编号
    protected $tagId;
    // 所属日期
    protected $belongDate;
    // 开始日期
    protected $startDate;
    // 结束日期
    protected $endDate;
    // 所有标签列表
    protected $tagList = Array();
    // 块代号数组
    protected $blockCodeArray = Array();
    // 响应信息
    protected $msg = Array();


    /**
     * 展示记录主页
     * @return [type] [description]
     */
    public function template()
    {
        return $this->fetch('/batchadd/template');
    }


    /**
     * 获取块和标签信息
     *
     * @param $this->getUserId() 当前用户编号
     * @return $this->msg['status'] 状态码
     * @return $this->msg['info'] 提示信息
     * @return $this->msg['blockList'] 块列表：块代号，颜色，标签名字
     * @return $this->msg['tagList'] 标签列表：编号，名字，颜色
     */
    public function acceptBlockAndTag()
    {
        // 验证用户是否已登录
        if( !$this->isLogin() ) {
            $this->echoJsonMsg(400, USER_IS_NOT_LOGIN, '/account/login');
        }

        // 接收数据
        // if( !empty($_POST['belongDate']) ) {
        //     $this->belongDate = $_POST['belongDate'];
        // } else {
        //     $this->echoJsonMsg(400, BELONG_DATE_IS_NULL, '/');
        // }

        // 获取标签信息
        $this->msg['tagList'] = $this->getTagList();
        // 判断标签列表是否为空
        if( empty($this->msg['tagList']) ) {
            $this->echoJsonMsg(400, USER_TAG_LIST_IS_NULL, '/label/add');
        }

        // 获取块信息
        $this->msg['blockList'] = $this->getTemplateBlockList();
        // 判断块列表是否为空
        if( empty($this->msg['blockList']) ) {
            $this->echoJsonMsg(200, USER_BLOCK_LIST_IS_NULL, '#');
        } else {
            // 成功获取块和标签列表
            $this->echoJsonMsg(200, GET_BLOCK_AND_TAG_SUCCESS, '#');
        }
    }


    /**
     * 提交模板
     * @param $_POST['tagId'] 标签编号
     * @param $_POST['blockCodeArray'] 块号数组
     *
     * @return $this->msg['status'] 状态码
     * @return $this->msg['info'] 提示信息
     * @return $this->msg['url'] 跳转链接
     */
    public function sendTemplate()
    {
        // 验证用户是否已登录
        if( !$this->isLogin() ) {
            $this->echoJsonMsg(400, USER_IS_NOT_LOGIN, '/account/login');
        }

        // 接收数据
        if( !empty($_POST['tagId']) ) {
            $this->tagId = $_POST['tagId'];
        } else {
            $this->echoJsonMsg(400, TAG_ID_IS_NULL, '/label/add');
        }

        // 接收数据
        // if( !empty($_POST['belongDate']) ) {
        //     $this->belongDate = $_POST['belongDate'];
        // } else {
        //     $this->echoJsonMsg(400, BELONG_DATE_IS_NULL, '/');
        // }

        // 接收数据
        if( !empty($_POST['blockCodeArray']) ) {
            $this->blockCodeArray = $_POST['blockCodeArray'];
        } else {
            $this->echoJsonMsg(400, BLOCK_CODE_ARRAY_IS_NULL, '#');
        }

        // 设置模板
        if( $this->setTemplate() ) {
            $this->echoJsonMsg(200, ADD_TEMPLATE_SUCCESS, '#');
        } else {
            $this->echoJsonMsg(400, ADD_TEMPLATE_FAILED, '#');
        }
    }


    /**
     * 应用模板
     * @param $_POST['startDate'] 开始日期
     * @param $_POST['endTime'] 结束日期
     *
     * @return $this->msg['status'] 状态码
     * @return $this->msg['info'] 提示信息
     */
    public function applyTemplate()
    {
        // 验证用户是否已登录
        if( !$this->isLogin() ) {
            $this->echoJsonMsg(400, USER_IS_NOT_LOGIN, '/account/login');
        }

        // 接收数据
        if( !empty($_POST['startDate']) ) {
            $this->startDate = $_POST['startDate'];
        } else {
            $this->echoJsonMsg(400, START_DATE_IS_NULL, '#');
        }

        // 接收数据
        if( !empty($_POST['endDate']) ) {
            $this->endDate = $_POST['endDate'];
        } else {
            $this->echoJsonMsg(400, END_DATE_IS_NULL, '#');
        }

        // 应用模板
        if( $this->setItem() ) {
            $this->echoJsonMsg(200, APPLY_TEMPLATE_SUCCESS, '/schedule/index');
        } else {
            $this->echoJsonMsg(400, APPLY_TEMPLATE_FAILED, '#');
        }
    }


    /**
     * 获取标签列表
     *
     * @param $this->getUserId() 用户编号
     *
     * @return $tagList 该用户添加的所有标签列表
     */
    private function getTagList()
    {
        $this->tagList = (new Tag())->where(["owner_id = ?"], [$this->getUserId()])->selectAll();
        return $this->tagList;
    }


    /**
     * 获取模板块信息
     *
     * @param $this->getUserId() 当前用户编号
     *
     * @return $blockList 块列表，包括：
     * @return $blockList['block_code'] 块代号
     * @return $blockList['block_text'] 块文本
     * @return $blockList['block_color'] 块颜色
     */
    private function getTemplateBlockList()
    {
        // 查询条件拼接，通过$param方式传入参数
        // 根据 owner_id 和 belong_date 获取 block_code 和 tag_id
        $itemList = (new Template())
        ->where(["owner_id = ?"], [$this->getUserId()])
        // ->order(['id DESC'])
        ->selectAll();

        $blockList = Array();
        for ($i=0; $i < count($itemList); $i++) {
            // 取出块号和标签id
            $blockCode = $itemList[$i]['block_code'];
            $tagId = $itemList[$i]['tag_id'];

            // 根据标签 id 获取对应标签对象
            $tag = (new Tag())->where(["id = ?"], [$tagId])->select();

            // 重新组装 块号、块名和颜色
            $block = array(
                'block_code' => $blockCode,
                'block_text' => $tag['tag_name'],
                'block_color' => $tag['tag_color']
            );
            array_push($blockList, $block);
        }
        // 块信息列表
        return $blockList;
    }


    /**
     * 设置模板
     *
     * @param  $this->tagId 标签名
     * @param  $this->getUserId() 当前用户编号
     * @return boolean 插入是否成功
     */
    private function setTemplate() {
        // 组装模板
        $data =['tag_id' => $this->tagId,
                'owner_id' => $this->getUserId(),
            ];

        // 写入模板
        $template = new Template();
        for ($i=0; $i < count($this->blockCodeArray); $i++) {
            $data['block_code'] = $this->blockCodeArray[$i];
            // 插入失败
            if( $template->insert($data) == 0) {
                return false;
            }
        }
        return true;
    }


    /**
     * 应用模板
     *
     * @param $this->tagId 标签名
     * @param $this->getUserId() 当前用户编号
     * @param $this->startDate 开始日期
     * @param $this->endDate 结束日期
     *
     * @return boolean 插入是否成功
     */
    private function setItem() {

        // 获取模板里块的信息
        $template = (new Template())->where(["owner_id = ?"], [$this->getUserId()])->selectAll();

        if( empty($template) ) {
            $this->echoJsonMsg(400, TEMPLATE_IS_NULL, '/');
        }

        // 天数
        $dataLength = ( strtotime($this->endDate) - strtotime($this->startDate) ) / 86400 + 1;
        // $dataLength = 7;

        // 写入事项
        $item = new Item();
        for ($i=0; $i < count($template); $i++) {
            // 按照天数循环
            for ($j=0; $j < $dataLength; $j++) {
                // 计算所属时间
                $belongTimestamp = strtotime($this->startDate) + 24*60*60*($j);
                $belongDate = date("Y-m-d", $belongTimestamp );
                // 组装事项
                $data =['tag_id' => $template[$i]['tag_id'],
                        'owner_id' => $this->getUserId(),
                        'belong_date' => $belongDate,
                        'block_code' => $template[$i]['block_code']
                    ];
                // 插入失败
                if( $item->insert($data) == 0) {
                    return false;
                }
            }
        }
        return true;
    }
}
