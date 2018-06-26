<?php
namespace fastphp\base;

/**
 * 视图基类
 */
class View
{
    protected $variables = array();
    protected $_controller;
    protected $_action;

    function __construct($controller, $action)
    {
        $this->_controller = strtolower($controller);
        $this->_action = strtolower($action);
    }

    // 分配变量
    public function assign($name, $value)
    {
        $this->variables[$name] = $value;
    }

    // 传入模板名字并渲染显示
    public function render($layout)
    {
        // 从数组中将变量导入到当前的符号表
        extract($this->variables);

        // 识别 html or php 模板

        // 默认 header，在 views 根目录下
        $defaultHeader = APP_PATH . 'app/views/header.html';
        $defaultFooter = APP_PATH . 'app/views/footer.html';

        // 模块 header 和 footer，在 views/$this->_controller 目录下
        $controllerHeader = APP_PATH . 'app/views/' . $this->_controller . '/header.html';
        $controllerFooter = APP_PATH . 'app/views/' . $this->_controller . '/footer.html';

        // 模板
        $controllerLayout = APP_PATH . 'app/views/' . $layout . '.html';

        // 自动加载页头文
        if (is_file($controllerHeader)) {
            include ($controllerHeader);
        } else {
            include ($defaultHeader);
        }

        //加载视图文件
        if (is_file($controllerLayout)) {
            include ($controllerLayout);
        } else {
            echo "模板不存在~";
        }

        // 自动加载页脚文件
        if (is_file($controllerFooter)) {
            include ($controllerFooter);
        } else {
            include ($defaultFooter);
        }
    }

}
