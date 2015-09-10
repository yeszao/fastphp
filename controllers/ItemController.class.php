<?php
 
class ItemController extends Controller {
 
    function view($id = null,$name = null) {
        $item = new ItemModel;
        $this->set('title', $name.' - My Todo List App');
        $this->set('todo', $item->select($id));
    }
     
    function index() {
        $item = new ItemModel;
        $this->set('title', 'All Items - My Todo List App');
        $this->set('todo', $item->selectAll());
    }
     
    function add() {
        $todo = $_POST['todo'];
        $item = new ItemModel;
        $this->set('title','Success - My Todo List App');
        $this->set('todo',$item->query('insert into items (item_name) values (\''.mysql_real_escape_string($todo).'\')'));   
    }
     
    function delete($id = null) {
        $item = new ItemModel;
        $this->set('title','Success - My Todo List App');
        $this->set('todo',$item->query('delete from items where id = \''.mysql_real_escape_string($id).'\''));   
    }
 
}