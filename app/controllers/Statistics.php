<?php
namespace app\controllers;

use fastphp\base\Controller;
use app\controllers\Account;
use app\models\Tag;
use app\models\Item;

class Statistics extends Account
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
    // 事件列表
    protected $eventList = Array();
    // 响应信息
    protected $msg = Array();


    /**
     * 展示统计主页
     * @return [type] [description]
     */
    public function index()
    {
        return $this->fetch('/statistics/index');
    }


    /**
     * 获取事件统计信息
     *
     * @param $_POST['belongDate'] 前端传来的所属日期
     * @param $this->getUserId() 当前用户编号
     *
     * @return $this->msg['status'] 状态码
     * @return $this->msg['info'] 提示信息
     * @return $this->msg['url'] 跳转链接
     * @return $this->msg['eventList'] 事件列表
     */
    public function acceptEventList()
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

        // 获取事件信息
        $this->msg['eventList'] = $this->makeEventList();
        // 判断事件列表是否为空
        if( empty($this->msg['eventList']) ) {
            $this->echoJsonMsg(400, EVENT_LIST_IS_NULL, '#');
        } else {
            // 成功获取事件列表
            $this->echoJsonMsg(200, GET_EVENT_LIST_SUCCESS, '#');
        }
    }


    /**
     * 组装事件
     *
     * @param $this->getUserId() 当前用户编号
     * @param $this->startDate 开始日期
     * @param $this->endData 结束日期
     *
     * @return $eventList 事件列表，包括：
     * @return $eventList['tag_name'] 标签名
     * @return $eventList['time_length'] 标签总计时长
     * @return $eventList['date_length'] 时间跨度
     * @return $eventList['time_length_per_day'] 每天标签时长
     */
    private function makeEventList() {
        // 重新组装事件
        // tag_id 和 时长（取决于记录数量）
        $eventList = Array();
        $tagList = (new Tag())->selectAll();

        // 遍历标签
        for ($i=0; $i < count($tagList); $i++) {
            // 取出 tag_id
            $tagId = $tagList[$i]['id'];
            $tagName = $tagList[$i]['tag_name'];
            // 根据标签 id 获取标签颜色
            // 查询条件拼接，通过$param方式传入参数
            // 根据 owner_id, tag_id 和 this->startDate, this->endDate
            // 获取结果数量
            $itemList = (new Item())
            ->where(["owner_id = ? and tag_id = ? and belong_date >= ? and belong_date <= ?"], [$this->getUserId(), $tagId, $this->startDate, $this->endDate])
            ->selectAll();
            $eventCount = count($itemList);
            if($eventCount!=0){
                // 重新组装 tag_id 和 查询得到的数量
                // 时长
                $timeLength = $eventCount * 0.25;
                // 天数
                $dataLength = ( strtotime($this->endDate) - strtotime($this->startDate) ) / 86400 + 1;
                // 每天平均时长
                $timeLengthPerDay = $timeLength / $dataLength;
                $event = array(
                    'tag_name' => $tagName,
                    'time_length' => $timeLength,
                    'date_length' => $dataLength,
                    'time_length_per_day' => $timeLengthPerDay
                );
                array_push($eventList, $event);
            }
        }
        return  $eventList;
    }
}
