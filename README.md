# FastPHP

## 简述

**fastphp**是一款简单的PHP MVC框架，主要目的是方便在 **[歪麦博客]** 上学习PHP MVC框架的同学下载源代码。
关于《手把手编写自己的PHP MVC框架》的教程，请参考网站：http://www.awaimai.com/128.html 。

要求：

* PHP 5.4.0+

## 目录说明

```
project  WEB部署目录
├─application           应用目录
│  ├─controllers        控制器目录
│  ├─models             模块目录
│  ├─views              视图目录
├─config                配置文件目录
├─fastphp               框架核心目录
├─static                静态文件目录
├─index.php             入口文件
```

## 使用

### 1.克隆代码

```
git clone https://github.com/yeszao/fastphp.git
```

### 2. 创建数据库

在数据库中创建名为 project 的数据库，并插入两条记录，命令：

```
CREATE DATABASE `project` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `project`;

CREATE TABLE `item` (
    `id` int(11) NOT NULL auto_increment,
    `item_name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
 
INSERT INTO `item` VALUES(1, 'Hello World.');
INSERT INTO `item` VALUES(2, 'Lets go!');
```

### 3.修改数据库配置文件

打开配置文件 config/config.php ，使之与自己的数据库匹配

```
$config['db']['host'] = 'localhost';
$config['db']['username'] = 'root';
$config['db']['password'] = '123456';
$config['db']['dbname'] = 'project';
```

### 4.配置Nginx或Apache
Apache：
```
<IfModule mod_rewrite.c>
    # 打开Rerite功能
    RewriteEngine On

    # 如果请求的是真实存在的文件或目录，直接访问
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d

    # 如果访问的文件或目录不是真事存在，分发请求至 index.php
    RewriteRule . index.php
</IfModule>
```
Nginx：
```
location / {
    # 重新向所有非真是存在的请求到index.php
    try_files $uri $uri/ /index.php$args;
}
```

### 5.测试访问

然后就可以访问了：http://localhost/
