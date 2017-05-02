<?php 


define('APP_PATH', __DIR__.'/');// 应用目录为当前目录
define('APP_DEBUG', true);// 开启调试模式
define('APP_URL', 'http://www.project.com');// 网站根URL


require(APP_PATH . 'fastphp/Fastphp.php');// 加载框架

$config = require(APP_PATH . 'config/config.php');

// 实例化核心类
(new Fastphp($config))->run();
