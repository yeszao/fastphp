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
    protected $response = Array();


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
     * @return $this->response['status'] 状态码
     * @return $this->response['info'] 提示信息
     * @return $this->response['blockList'] 块列表：块代号，颜色，标签名字
     * @return $this->response['tagList'] 标签列表：编号，名字，颜色
     */
    public function getBlockAndTag()
    {
        // 验证用户是否已登录
        if( $this->isLogin() ){

            // 获取块信息
            $this->getTemplateBlockList();

            // 获取标签信息
            $this->getTagList();

            // 判断该用户的标签列表是否为空
            if( !empty($this->response['tagList']) ) {
                if( !empty($this->response['blockList']) ) {
                    $this->response['status'] = 200;
                    $this->response['info'] = GET_BLOCK_AND_TAG_SUCCESS;
                } else {
                    $this->response['status'] = 200;
                    $this->response['info'] = USER_BLOCK_LIST_IS_NULL;
                }
            } else {
                $this->response['status'] = 400;
                $this->response['info'] = USER_TAG_LIST_IS_NULL;
            }
        } else {
            $this->response['status'] = 400;
            $this->response['info'] = USER_IS_NOT_LOGIN;
        }
        // 返回 json 数据
        echo json_encode( $this->response, JSON_UNESCAPED_UNICODE);
    }


    /**
     * 获取块信息
     * @param $this->getUserId() 当前用户编号
     * @return $this->response['blockList'] 块列表：块代号，颜色，标签名字
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
        $this->response['blockList'] = $blockList;
    }


    /**
     * 获取标签列表
     * @param $this->getUserId() 用户编号
     * @return $this->response['tagList'] 该用户添加的所有标签列表
     */
    private function getTagList()
    {
        $this->tagList = (new Tag())->where(["owner_id = ?"], [$this->getUserId()])->selectAll();
        $this->response['tagList'] = $this->tagList;
    }


    /**
     * 提交事项
     * @param $_POST['tagId'] 标签编号
     * @param $_POST['blockCodeArray'] 块号数组
     *
     * @return $this->response['status'] 状态码
     * @return $this->response['info'] 提示信息
     */
    public function sendTemplate()
    {
        // 验证用户是否已登录
        if( $this->isLogin() ){

            // 接收数据
            $this->tagId = isset($_POST['tagId']) ? $_POST['tagId'] : '';
            $this->blockCodeArray = isset($_POST['blockCodeArray']) ? $_POST['blockCodeArray'] : '';

            if( !empty($this->tagId) ) {
                if( !empty($this->blockCodeArray) ) {

                    // 设置模板
                    if( $this->setTemplate() ) {
                        $this->response['status'] = 200;
                        $this->response['info'] = ADD_TEMPLATE_SUCCESS;
                    } else {
                        $this->response['status'] = 400;
                        $this->response['info'] = ADD_TEMPLATE_FAILED;
                    }
                } else {
                    $this->response['status'] = 400;
                    $this->response['info'] = BLOCK_CODE_ARRAY_IS_NULL;
                }
            } else {
                $this->response['status'] = 400;
                $this->response['info'] = TAG_ID_IS_NULL;
            }
        }else{
            $this->response['status'] = 400;
            $this->response['info'] = USER_IS_NOT_LOGIN;
            // $this->success(USER_IS_NOT_LOGIN, '/account/login');
        }
        // 返回状态码和提示信息
        echo json_encode( $this->response, JSON_UNESCAPED_UNICODE);
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
     * @param $_POST['startDate'] 开始日期
     * @param $_POST['endTime'] 结束日期
     *
     * @return $this->response['status'] 状态码
     * @return $this->response['info'] 提示信息
     */
    public function applyTemplate()
    {
        // 验证用户是否已登录
        if( $this->isLogin() ){

            // 接收数据
            $this->startDate = isset($_POST['startDate']) ? $_POST['startDate'] : '';
            $this->endDate = isset($_POST['endDate']) ? $_POST['endDate'] : '';

            // 设置事项
            $this->setItem();

        }else{
            $this->response['status'] = 400;
            $this->response['info'] = USER_IS_NOT_LOGIN;
            // $this->success(USER_IS_NOT_LOGIN, '/account/login');
        }
        // 返回状态码和提示信息
        echo json_encode( $this->response, JSON_UNESCAPED_UNICODE);
    }


    /**
     * 设置事项
     *
     * @param $this->tagId 标签名
     * @param $this->getUserId() 当前用户编号
     * @param $this->startDate 开始日期
     * @param $this->endDate 结束日期
     */
    private function setItem() {

        // 获取 模板 里块的信息
        $template = (new Template())->where(["owner_id = ?"], [$this->getUserId()])->selectAll();

        if( empty($template) ) {
            $this->response['status'] = 400;
            $this->response['info'] = "模板为空，请先选择事项o(*￣︶￣*)o";
        } else {
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
                    $item->insert($data);
                }
            }
            $this->response['startDate'] = $this->startDate;
            $this->response['endDate'] = $this->endDate;
            $this->response['dataLength'] = $dataLength;
            $this->response['template'] = $template;
            $this->response['status'] = 200;
            $this->response['info'] = ADD_ITEM_SUCCESS;
        }

    }

}

