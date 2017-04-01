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
├─fastphp               核心框架目录
├─runtime               运行目录
│  ├─caches             缓存文目录
│  ├─logs               日志目录
│  ├─sessions           缓存目录
├─index.php             入口文件
```
因为默认情况下git忽略提交空目录，所以在教程中提到的目录结构中，不包含runtime目录，这个目录仅保留未来备用，当前框架使用不受影响。

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
	define('DB_NAME', 'project');
	define('DB_USER', 'root');
	define('DB_PASSWORD', 'root');
	define('DB_HOST', 'localhost');
```

### 4.测试访问

打开 index.php 文件，修改

```
define('APP_URL', 'http://localhost/project');
```

为自己代码的具体位置，默认是localhost的project目录下。

然后就可以访问了：http://localhost/project/
