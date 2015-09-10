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
         
        if (file_exists(APP_PATH . 'views/' . $this->_controller . '/header.php')) {
            include (APP_PATH . 'views/' . $this->_controller . '/header.php');
        } else {
            include (APP_PATH . 'views/header.php');
        }

        include (APP_PATH . 'views/' . $this->_controller . '/' . $this->_action . '.php');       
         
        if (file_exists(APP_PATH . 'views/' . $this->_controller . '/footer.php')) {
            include (APP_PATH . 'views/' . $this->_controller . '/footer.php');
        } else {
            include (APP_PATH . 'views' . '/footer.php');
        }
    }
 
}