<?php
/*
namespace app\controllers;

use fastphp\base\Controller;
use app\models\Item;

class Mall extends Controller
{
    // 首页方法，测试框架自定义DB查询
    public function index()
    {
        $keyword = isset($_GET['keyword']) ? $_GET['keyword'] : '';

        if ($keyword) {
            // 根据 $keyword 查询所有内容
            $items = (new Item())->search($keyword);
        } else {
            // 查询所有内容，并按倒序排列输出
            // where()方法可不传入参数，或者省略
            $items = (new Item)->where()->order(['id DESC'])->selectAll();
        }
        $this->assign('title', '全部条目');
        $this->assign('keyword', $keyword);
        $this->assign('items', $items);
        $this->fetch('/item/index');
    }

    // 查看单条记录详情
    public function detail($id)
    {
        // 通过?占位符传入$id参数
        $item = (new Item())->where(["id = ?"], [$id])->select();

        $this->assign('title', '条目详情');
        $this->assign('item', $item);
        $this->fetch('/item/detail');
    }

    // 添加记录，测试框架DB记录创建（Create）
    public function add()
    {
        $data['item_name'] = $_POST['value'];
        $count = (new Item)->add($data);

        $this->assign('title', '添加成功');

         // 展示提示信息并重定向到指定链接
        $this->success('成功添加'.$count.'条记录','/item/index');
    }

    // 操作管理
    public function manage($id = 0)
    {
        $item = array();
        if ($id) {
            // 通过名称占位符传入参数
            $item = (new Item())->where(["id = :id"], [':id' => $id])->select();
        }

        $this->assign('title', '管理条目');
        $this->assign('item', $item);
        $this->fetch('/item/manage');
    }

    // 更新记录，测试框架DB记录更新（Update）
    public function update()
    {
        $data = array('id' => $_POST['id'], 'item_name' => $_POST['value']);
        $count = (new Item)->where(['id = :id'], [':id' => $data['id']])->update($data);

        $this->assign('title', '修改成功');
        $this->assign('count', $count);
        $this->fetch('/item/update');
    }

    // 删除记录，测试框架DB记录删除（Delete）
    public function delete($id = null)
    {
        $count = (new Item)->delete($id);

        $this->assign('title', '删除成功');
        $this->assign('count', $count);
        $this->fetch('/item/delete');
    }
}