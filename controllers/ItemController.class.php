<?php
 
class ItemController extends Controller {
    
    // 首页方法，测试框架自定义DB查询
    function index() {
        $item = new ItemModel;
        $this->set('title', '全部条目');
        $this->set('todo', $item->query('select * from item'));
    }
    
    // 添加记录，测试框架DB记录创建（Create）
    function add() {
        $value = $_POST['value'];
        $item = new ItemModel;
        $this->set('title', '添加成功');
        $this->set('todo', $item->add($value));
    }
    
    // 查看记录，测试框架DB记录读取（Read）
    function view($id = null,$name = null) {
        $item = new ItemModel;
        $this->set('title', '正在查看'. $name);
        $this->set('todo', $item->select($id));
    }
    
    // 更新记录，测试框架DB记录更新（Update）
    function update() {
        $id = $_POST['id'];
        $value = $_POST['value'];
        $item = new ItemModel;
        $this->set('title', '修改成功');
        $this->set('todo', $item->update($id, $value));
    }
    
    // 删除记录，测试框架DB记录删除（Delete）
    function delete($id = null) {
        $item = new ItemModel;
        $this->set('title','删除成功');
        $this->set('todo',$item->delete($id));
    }
 
}