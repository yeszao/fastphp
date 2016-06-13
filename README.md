# FastPHP

## 简述

**FastPHP**是一款简单的PHP MVC框架，主要目的是方便在 **[歪麦博客]** 上学习PHP MVC框架的同学下载源代码。
关于《手把手编写自己的PHP MVC框架》的教程，请参考网站：http://www.awaimai.com/128.html 。

## 目录说明

因为默认情况下git无法提交空目录，所以在教程中提到的目录结构：

- application
- config
- fastphp
- public
- runtime
  - cache
  - logs
  - sessions
- scripts

## 使用
1.克隆代码
	git clone https://github.com/yeszao/FastPHP.git

2. 创建数据库
在数据库中创建名为 todo 的数据库，并插入两条记录，命令：
	CREATE DATABASE IF NOT EXISTS `todo`;
	USE `todo`;

	CREATE TABLE `item` (
	    `id` int(11) NOT NULL auto_increment,
	    `item_name` varchar(255) NOT NULL,
	    PRIMARY KEY (`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
	 
	INSERT INTO `item` VALUES(1, 'Hello World.');
	INSERT INTO `item` VALUES(2, 'Lets go!');

3.修改配置文件
打开配置文件 config/config.php ，使之与自己的数据库匹配
	define('DB_NAME', 'todo');
	define('DB_USER', 'root');
	define('DB_PASSWORD', 'root');
	define('DB_HOST', 'localhost');

4.测试访问
访问系统的地址，如：    http://localhost/fastphp/item/index/

这么多目录中，从代码仓里面clone后是没有public、runtime和scripts目录的，
但是不影响使用。
