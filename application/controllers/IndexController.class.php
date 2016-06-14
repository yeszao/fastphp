<?php
 
class IndexController extends Controller
{
    function index()
    {
        $this->assign('title', '这是首页');
        $this->assign('todo', '欢迎开发FastPHP!');
    }
 }