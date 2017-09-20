<?php

/**
 * 数据库操作类，使用单例模式，确保运行期间只有一个数据库连接对象
 * Class Db
 */
class Db
{
    private static $pdo = null;

    public static function pdo($config = array())
    {
        if (self::$pdo !== null) {
            return self::$pdo;
        }

        $dsn = sprintf('mysql:host=%s;dbname=%s', $config['host'], $config['dbname']);
        $option = array(PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC);

        return self::$pdo = new PDO($dsn, $config['username'], $config['password'], $option);
    }
}