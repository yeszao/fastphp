<?php
 
class IndexController extends Controller
{
    function index()
    {
        $this->set('title', '这是首页');
        $this->set('todo', '欢迎开发FastPHP!');
    }
 }