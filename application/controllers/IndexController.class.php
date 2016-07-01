<?php
 
class IndexController extends Controller
{
    function index()
    {
        $this->assign('title', '这是首页');
        $this->assign('content', '欢迎开发FastPHP!');
        $this->render();
    }
 }