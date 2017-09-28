<?php

/**
 * 数据库操作类，$pdo属性为静态属性，这样在页面执行周期内，
 * 只要经过一次赋值，那么第二次再获取还是首次赋值的内容，这
 * 里就是PDO对象，这样可以确保运行期间只有一个数据库连接对
 * 像，这种是一种简单的单例模式
 * Class Db
 */
class Db
{
    private static $pdo = null;

    public static function pdo()
    {
        if (self::$pdo !== null) {
            return self::$pdo;
        }

        $dsn = sprintf('mysql:host=%s;dbname=%s', DB_HOST, DB_NAME);
        $option = array(PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC);

        return self::$pdo = new PDO($dsn, DB_USER, DB_PASS, $option);
    }
}