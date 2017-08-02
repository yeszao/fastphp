<?php
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
 
    // 渲染显示
    public function render()
    {
        extract($this->variables);
        $defaultHeader = APP_PATH . 'application/views/header.php';
        $defaultFooter = APP_PATH . 'application/views/footer.php';

        $controllerHeader = APP_PATH . 'application/views/' . $this->_controller . '/header.php';
        $controllerFooter = APP_PATH . 'application/views/' . $this->_controller . '/footer.php';
        $controllerLayout = APP_PATH . 'application/views/' . $this->_controller . '/' . $this->_action . '.php';

        // 页头文件
        if (file_exists($controllerHeader)) {
            include ($controllerHeader);
        } else {
            include ($defaultHeader);
        }

        //判断视图文件是否存在
        if (file_exists($controllerLayout)) {
            include ($controllerLayout);
        } else {
            echo "<h1>无法找到视图文件</h1>";
        }
        
        // 页脚文件
        if (file_exists($controllerFooter)) {
            include ($controllerFooter);
        } else {
            include ($defaultFooter);
        }
    }
}
