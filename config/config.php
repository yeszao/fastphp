<?php

define('ENV_MODE', 'dev');

// 引进场景环境配置文件
$configFile = APP_PATH . 'config/' . ENV_MODE.'.php';

if(is_file( $configFile ) ) {
    include( $configFile );
} else {
    throw new Exception("{$configFile} 配置文件不存在！");
}

// 数据库配置
$config['db']['host'] = CONFIG_DB_HOST;
$config['db']['dbname'] = CONFIG_DB_NAME;
$config['db']['username'] = CONFIG_DB_USER;
$config['db']['password'] = CONFIG_DB_PWD;

// 默认控制器和操作名
$config['defaultController'] = 'Schedule';
$config['defaultAction'] = 'index';

return $config;
