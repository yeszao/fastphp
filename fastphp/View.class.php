<?php
/**
 * 视图基类
 */
class View {
     
    protected $variables = array();
    protected $_controller;
    protected $_action;
     
    function __construct($controller, $action) {
        $this->_controller = $controller;
        $this->_action = $action;
    }
 
    /** 设置变量方法 **/
 
    function set($name, $value) {
        $this->variables[$name] = $value;
    }
 
    /** 显示 **/
     
    function render() {
        extract($this->variables);
        $defaultHeader = APP_PATH . 'application/views/header.php';
        $defaultFooter = APP_PATH . 'application/views/footer.php';
        $controllerHeader = APP_PATH . 'application/views/' . $this->_controller . '/header.php';
        $controllerFooter = APP_PATH . 'application/views/' . $this->_controller . '/footer.php';
        
        // 页头文件
        if (file_exists($controllerHeader)) {
            include ($controllerHeader);
        } else {
            include ($defaultHeader);
        }

        // 页内容文件
        include (APP_PATH . 'application/views/' . $this->_controller . '/' . $this->_action . '.php');
        
        // 页脚文件
        if (file_exists($controllerFooter)) {
            include ($controllerFooter);
        } else {
            include ($defaultFooter);
        }
    }
 
}