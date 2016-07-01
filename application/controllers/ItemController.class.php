<?php
 
class ItemController extends Controller
{
    // 首页方法，测试框架自定义DB查询
    public function index()
    {
        $items = (new ItemModel)->selectAll();

        $this->assign('title', '全部条目');
        $this->assign('items', $items);
        $this->render();
    }
    
    // 添加记录，测试框架DB记录创建（Create）
    public function add()
    {
        $data['item_name'] = $_POST['value'];
        $count = (new ItemModel)->add($data);

        $this->assign('title', '添加成功');
        $this->assign('count', $count);
        $this->render();
    }
    
    // 查看记录，测试框架DB记录读取（Read）
    public function view($id = null)
    {
        $item = (new ItemModel)->select($id);

        $this->assign('title', '正在查看' . $item['item_name']);
        $this->assign('item', $item);
        $this->render();
    }
    
    // 更新记录，测试框架DB记录更新（Update）
    public function update()
    {
        $data = array('id' => $_POST['id'], 'item_name' => $_POST['value']);
        $count = (new ItemModel)->update($data['id'], $data);

        $this->assign('title', '修改成功');
        $this->assign('count', $count);
        $this->render();
    }
    
    // 删除记录，测试框架DB记录删除（Delete）
    public function delete($id = null)
    {
        $count = (new ItemModel)->delete($id);

        $this->assign('title', '删除成功');
        $this->assign('count', $count);
        $this->render();
    }
}