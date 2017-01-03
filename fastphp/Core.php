<?php
/**
 * fastphp框架核心
 */
class Core
{
    // 运行程序
    public function run()
    {
        spl_autoload_register(array($this, 'loadClass'));
        $this->setReporting();
        $this->removeMagicQuotes();
        $this->unregisterGlobals();
        $this->route();
    }

    // 路由处理
    public function route()
    {
        $controllerName = 'Index';
        $action = 'index';
        $param = array();

		$url = isset($_GET['url']) ? $_GET['url'] : false;
        if ($url) {
            // 使用“/”分割字符串，并保存在数组中
            $urlArray = explode('/', $url);
            // 删除空的数组元素
            $urlArray = array_filter($urlArray);
            
            // 获取控制器名
            $controllerName = ucfirst($urlArray[0]);
            
            // 获取动作名
            array_shift($urlArray);
            $action = $urlArray ? $urlArray[0] : 'index';
            
            // 获取URL参数
            array_shift($urlArray);
            $param = $urlArray ? $urlArray : array();
        }

        // 实例化控制器
        $controller = $controllerName . 'Controller';
        $dispatch = new $controller($controllerName, $action);

        // 如果控制器存和动作存在，这调用并传入URL参数
        if ((int)method_exists($controller, $action)) {
            call_user_func_array(array($dispatch, $action), $param);
        } else {
            exit($controller . "控制器不存在");
        }
    }

    // 检测开发环境
    public function setReporting()
    {
        if (APP_DEBUG === true) {
            error_reporting(E_ALL);
            ini_set('display_errors','On');
        } else {
            error_reporting(E_ALL);
            ini_set('display_errors','Off');
            ini_set('log_errors', 'On');
            ini_set('error_log', RUNTIME_PATH. 'logs/error.log');
        }
    }

    // 删除敏感字符
    public function stripSlashesDeep($value)
    {
        $value = is_array($value) ? array_map(array($this, 'stripSlashesDeep'), $value) : stripslashes($value);
        return $value;
    }

    // 检测敏感字符并删除
    public function removeMagicQuotes()
    {
        if (get_magic_quotes_gpc()) {
            $_GET = isset($_GET) ? $this->stripSlashesDeep($_GET ) : '';
            $_POST = isset($_POST) ? $this->stripSlashesDeep($_POST ) : '';
            $_COOKIE = isset($_COOKIE) ? $this->stripSlashesDeep($_COOKIE) : '';
            $_SESSION = isset($_SESSION) ? $this->stripSlashesDeep($_SESSION) : '';
        }
    }

    // 检测自定义全局变量（register globals）并移除
    public function unregisterGlobals()
    {
        if (ini_get('register_globals')) {
            $array = array('_SESSION', '_POST', '_GET', '_COOKIE', '_REQUEST', '_SERVER', '_ENV', '_FILES');
           foreach ($array as $value) {
                foreach ($GLOBALS[$value] as $key => $var) {
                    if ($var === $GLOBALS[$key]) {
                        unset($GLOBALS[$key]);
                    }
                }
            }
        }
    }

    // 自动加载控制器和模型类 
    public static function loadClass($class)
    {
        $frameworks = FRAME_PATH . $class . '.class.php';
        $controllers = APP_PATH . 'application/controllers/' . $class . '.class.php';
        $models = APP_PATH . 'application/models/' . $class . '.class.php';

        if (file_exists($frameworks)) {
            // 加载框架核心类
            include $frameworks;
        } elseif (file_exists($controllers)) {
            // 加载应用控制器类
            include $controllers;
        } elseif (file_exists($models)) {
            //加载应用模型类
            include $models;
        } else {
            // 错误代码
        }
    }
}