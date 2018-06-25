[TOC]
# 可视化日程统计开发

标签： 开发

---

## 1. 搭建 wamp 开发环境
### 1  下载 [wampserver_X86_2.5.1455519048](http://www.wampserver.com/)
> `wampserver3.1.0_x64` 在windows7 64 下报错 `The setup files are corrupted Please obtain a new copy of the program`(安装文件已损坏，请获取程序的新副本)

> 尝试 DirectX修复工具，也失败

### 2. 配置wamp

---

## 2. [手把手编写PHP MVC框架实例教程](https://www.awaimai.com/128.html)
### 1. [下载源码](https://github.com/yeszao/fastphp/archive/master.zip)
### 2. 配置 Apache
#### 1. 打开 httpd.conf
#### 2. 打开重写扩展
> LoadModule rewrite_module modules/mod_rewrite.so 这句前面的 注释 # 去掉
> 将文件中所有的 AllowOverride None 改为 AllowOverride All

#### 3. 设置DocumentRoot
```
DocumentRoot "c:/wamp/www/dwm/"
```

#### 4. 设置目录
```
<Directory "c:/wamp/www/dwm">
    Options Indexes FollowSymLinks    #显示当前文件夹下的所有文件
    AllowOverride All #允许重写apache默认配置
</Directory>
```

#### 5. 重启 wamp

### 3. 设置重定向
    如果是Apache服务器，在根目录下新建一个 .htaccess 文件
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

### 4. 配置项目配置文件
> 修改/config/config.php
#### 场景配置
[快速入门ThinkPHP 5.0--基础篇 2-8 场景配置](https://www.imooc.com/video/14755)
[PHP项目配置运行环境的正确姿势](https://github.com/lisijie/homepage/blob/master/posts/tech/PHP%E9%A1%B9%E7%9B%AE%E9%85%8D%E7%BD%AE%E8%BF%90%E8%A1%8C%E7%8E%AF%E5%A2%83%E7%9A%84%E6%AD%A3%E7%A1%AE%E5%A7%BF%E5%8A%BF.md)


---
## Git
### 1. Git 入门知识
#### 1. [廖雪峰--史上最浅显易懂的Git教程](https://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000)
#### 2. [Git入门指南使用资料汇总及文章推荐](https://github.com/xirong/my-git/blob/master/ixirong.com.md)
#### 3. 分支管理策略
- [x] [Git分支管理策略](http://www.ruanyifeng.com/blog/2012/07/git.html)
- [ ] [介绍一个成功的 Git 分支模型](https://www.oschina.net/translate/a-successful-git-branching-model)
#### 4. [使用git时出现：warning: LF will be replaced by CRLF](https://www.jianshu.com/p/0acf732eab68)

### 2. 使用 Github 客户端进行版本控制
#### 1. [Github 的 SSH 配置](https://blog.csdn.net/chenliguan/article/details/51072809)
#### 2. [Github 客户端使用方法](https://www.cnblogs.com/liuleilei/p/6533177.html)
    注：使用迅雷下载 https://desktop.github.com/ 会快点
#### 3. [GitHub for Windows 客户端的使用教程](https://blog.csdn.net/qq_25269835/article/details/70177314)
#### 4. [Github 提交失败 fatal: unable to access](https://segmentfault.com/q/1010000004014275/a-1020000004044485)
#### 5.1 [通过 GitHub Desktop 本地回退版本并且更新远程仓库](https://www.cnblogs.com/lqcdsns/p/5265665.html)
##### 1. 在本地仓库 commit to master 未 push 到远程仓库
    undo
##### 2. 已 push 到远程仓库
    History->右键->Reserve this commit
    commit to master
    push

#### 5.2 [ 弃用 ] [通过 Git 本地回退版本并且更新远程仓库  reset](https://blog.csdn.net/neuldp/article/details/51883528)
  当不小心向远程仓库比如github做了一次错误的提交，想使本地和仓库回到某一个历史版本
##### 1. [ 可选 ] 找到想要回到的 commit id （版本号）
    1. 在 GitHub Desktop 中根据 History->右键->Copy SHA 复制
    2. GitHub 网站
    3. Git Bash 命令行
##### 2. [ 可选 ] 进入本地仓库
    1. 在本地仓库文件夹右键-> Git Bash Here
    2. Git Bash 客户端通过 cd 命令
    3. 在 GitHub Desktop 中 `Ctrl + \` ` 在命令提示符中
##### 3. 回退
``` {.liner-numbers}
# 回退所有内容到上一个版本，省略文件名表示回退所有
git reset HEAD^ `文件名`

# 向前回退到第3个版本
git reset –soft HEAD~3

# 将本地的状态回退到和远程的一样
# 这里origin是项目持有者的别称
git reset --hard origin/master(easy way)
git rebase FETCH_HEAD

# 回退到某个版本
git reset --hard `版本号`

# 模式：git reset --<mode> [<commit>]
# mode：
#   --soft  退到某个版本，只回退了 commit 的信息，不会恢复到 index file 一级。如果还要提交，直接commit即可
#   --mixed 此为默认方式，回退到某个版本，只保留源码，回退 commit 和 index 信息
#   --hard  彻底回退到某个版本，本地的源码也会变为上一个版本的内容
```
##### 4. 提交到远程仓库
```
git push --force
```
#### 6. [使用 git 和 github 管理自己的项目---真实开发环境的策略](https://segmentfault.com/a/1190000003739324)



---

## 入坑 Atom 编辑器
### [Atom 备份神器 —— Sync Settings 教程](https://www.cnblogs.com/hooray/p/5885211.html)
    Personal access tokens : b22a2d7d325e069b004f7ae262dd80c10129990a
    Gist Id : 4bed82817c679576258683eb7d70cb6a
    Gist 库[已被墙]: https://gist.github.com/FaceShawn/4bed82817c679576258683eb7d70cb6a
### [自建 shadowsocks 服务器教程](https://github.com/Alvin9999/new-pac/wiki/%E8%87%AA%E5%BB%BAss%E6%9C%8D%E5%8A%A1%E5%99%A8%E6%95%99%E7%A8%8B)，建立 gist 仓库存储 sync 备份的 .atom 配置文件
### [通过PayPal取消Vultr预核准付款防止自动扣费M](https://www.wn789.com/5496.html)
### [markdown-preview-enhanced 文档](https://shd101wyy.github.io/markdown-preview-enhanced/#/zh-cn/)
### [atom 中使用自定义 JSHint](https://blog.csdn.net/u010620152/article/details/71404192)


---

## HTML & JQuery
### 1. html 引用公共的头部和尾部
#### 1. [通过 jQuery 中的函数 load() ](https://blog.csdn.net/qq_35393869/article/details/79803190)

#### 2. [通过 iframe 框架标签](https://www.jianshu.com/p/140c71ccd7a6)
> Scrolling: 是否有滚动条，yes有，no无，auto 根据被显示html自动显示或隐藏

### 2. [DOM 对象中 innerHTML，innerText，outerHTML，textContent的用法与区别](https://segmentfault.com/a/1190000000410375)
### 3. [bootstrap 加载表格 & 单击获取当前行号](https://blog.csdn.net/framic/article/details/70254705)
### 4. [Bootstrap Table 使用文档](https://www.jianshu.com/p/53505ec42fa3)
### 5. [js 简单的实现点击选中点击取消的效果](https://www.jianshu.com/p/ab8f9de0739a)
### 6. [$.inArry() 根据值删除数组元素](https://blog.csdn.net/m0_37290635/article/details/56487205)
### 7. [为input的date类型设置默认值](http://ghmagical.com/article/page/id/unacjkHzT3W0)
### 8. [JS 操作 JSON](https://www.cnblogs.com/worfdream/articles/1956449.html)
### [JSON.parse() 和 JSON.stringify() 的区别 ](https://www.jianshu.com/p/eb449b29a2bd)
### [模态框被灰色阴影遮罩挡住](https://blog.csdn.net/oschina_41012066/article/details/78982969)
### [document.getElementById() 与 $() 区别](https://www.cnblogs.com/hujunzheng/p/4907482.html)
### [模态框modal的高度和宽度设置](https://blog.csdn.net/u014326004/article/details/69789187)
### 用时间戳动态加载 js 解决浏览器缓存，即 js 文件修改后浏览器不能及时更新的问题
    <script         src="/static/js/schedule.js?v=<%=timestamp()%>"></script>

#### 1. [js 文件修改后浏览器不能及时更新](https://my.oschina.net/guopengfei/blog/411306?p=2)
#### 2. [解决 js 缓存动态更新](https://segmentfault.com/a/1190000007404333)
#### 3. [web 页面布局结构](https://images0.cnblogs.com/i/17148/201406/061638243337718.png)

---

##  MVC 框架
### 1. [ORM 对象关系映射](https://www.pureweber.com/article/orm/)
### 2. [pdo 数据库访问抽象层使用](https://www.kancloud.cn/curder/mysql/354884)
### 3. [pdo 数据库访问抽象层详解](https://blog.csdn.net/nailwl/article/details/4733655)

---

## PHP
### 1. [spl_autoload_register() 和 __autoload()](https://my.oschina.net/alexskywinner/blog/92737)
###

---

## LAMP
### 修改网站根目录
```
vi /etc/apache2/sites-available/000-default.conf
重启apache
/etc/init.d/apache2 restart
```




  [1]: https://images0.cnblogs.com/i/17148/201406/061638243337718.png
