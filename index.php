<?php

header("Content-type:text/html;charset=utf-8");
header('Cache-Control:no-cache, must-revalidate');

// 应用目录为当前目录
define('APP_PATH', __DIR__ . '/');

// 开启调试模式
define('APP_DEBUG', true);

// 打开 Session
session_start();

// 加载框架文件
require(APP_PATH . 'fastphp/Fastphp.php');

// 加载常量文件
require(APP_PATH . 'config/ConstMsg.php');

// 加载配置文件
$config = require(APP_PATH . 'config/config.php');

// 实例化框架类
(new fastphp\Fastphp($config))->run();
