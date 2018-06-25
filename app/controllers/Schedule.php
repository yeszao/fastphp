<?php
namespace app\controllers;

use fastphp\base\Controller;
use app\controllers\Account;
use app\models\Tag;
use app\models\Item;

class Schedule extends Account
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
     *
     * @return [type] [description]
     */
    public function index()
    {
        return $this->fetch('/schedule/index');
    }


    /**
     * 获取块和标签信息
     *
     * @param $_POST['belongDate'] 前端传来的所属日期
     * @param $this->getUserId() 当前用户编号
     *
     * @return $this->msg['status'] 状态码
     * @return $this->msg['info'] 提示信息
     * @return $this->msg['url'] 跳转链接
     * @return $this->msg['blockList'] 块列表
     * @return $this->msg['tagList'] 标签列表
     */
    public function acceptBlockAndTag()
    {
        // 验证用户是否已登录
        if( !$this->isLogin() ) {
            $this->echoJsonMsg(400, USER_IS_NOT_LOGIN, '/account/login');
        }

        // 接收数据
        if( !empty($_POST['belongDate']) ) {
            $this->belongDate = $_POST['belongDate'];
        } else {
            $this->echoJsonMsg(400, BELONG_DATE_IS_NULL, '#');
        }

        // 获取标签信息
        $this->msg['tagList'] = $this->getTagList();
        // 判断标签列表是否为空
        if( empty($this->msg['tagList']) ) {
            $this->echoJsonMsg(400, TAG_LIST_IS_NULL, '/label/add');
        }

        // 获取块信息
        $this->msg['blockList'] = $this->getBlockList();
        // 判断块列表是否为空
        if( empty($this->msg['blockList']) ) {
            $this->echoJsonMsg(200, BLOCK_LIST_IS_NULL, '#');
        } else {
            // 成功获取块列表
            $this->echoJsonMsg(200, GET_BLOCK_AND_TAG_SUCCESS, '#');
        }
    }


    /**
     * 提交事项
     *
     * @param $_POST['tagId'] 标签编号
     * @param $_POST['belongDate'] 所属日期
     * @param $_POST['blockCodeArray'] 块号数组
     *
     * @return $this->msg['status'] 状态码
     * @return $this->msg['info'] 提示信息
     * @return $this->msg['url'] 跳转链接
     */
    public function sendItem()
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
        if( !empty($_POST['belongDate']) ) {
            $this->belongDate = $_POST['belongDate'];
        } else {
            $this->echoJsonMsg(400, BELONG_DATE_IS_NULL, '#');
        }

        // 接收数据
        if( !empty($_POST['blockCodeArray']) ) {
            $this->blockCodeArray = $_POST['blockCodeArray'];
        } else {
            $this->echoJsonMsg(400, BLOCK_CODE_ARRAY_IS_NULL, '#');
        }

        // 设置事项
        if( $this->setItemList() ) {
            $this->echoJsonMsg(200, ADD_ITEM_SUCCESS, '#');
        } else {
            $this->echoJsonMsg(400, ADD_ITEM_FAILED, '#');
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
     * 获取块信息
     *
     * @param $this->getUserId() 当前用户编号
     * @param $this->belongData 所属日期
     *
     * @return $blockList 块列表，包括：
     * @return $blockList['block_code'] 块代号
     * @return $blockList['block_text'] 块文本
     * @return $blockList['block_color'] 块颜色
     */
    private function getBlockList()
    {
        // 查询条件拼接，通过$param方式传入参数
        // 根据 owner_id 和 belong_date 获取 block_code 和 tag_id
        $itemList = (new Item())
        ->where(["owner_id = ? and belong_date = ?"], [$this->getUserId(), $this->belongDate])
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
     * 设置事项
     *
     * @param  $this->tagId 标签名
     * @param  $this->getUserId() 当前用户编号
     * @param  $this->belongDate 事项所属日期
     *
     * @return boolean 插入是否成功
     */
    private function setItemList() {
        // 组装事项
        $data =['tag_id' => $this->tagId,
                'owner_id' => $this->getUserId(),
                'belong_date' => $this->belongDate,
            ];

        // 写入事项
        $item = new Item();
        for ($i=0; $i < count($this->blockCodeArray); $i++) {
            $data['block_code'] = $this->blockCodeArray[$i];
            // 插入失败
            if( $item->insert($data) == 0) {
                return false;
            }
        }
        return true;
    }

}
