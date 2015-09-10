<?php
class Model extends Sql {
    protected $_model;
 
    function __construct() {
 
        // 连接数据库
        $this->connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
        
        // 转换模型+Model为模型名称
        
        
        // 获取对象所属类的名称
        $this->_model = get_class($this);
        $this->_model = rtrim($this->_model, 'Model');
        
        // 数据库表名与类名一致
        $this->_table = strtolower($this->_model);
    }
 
    function __destruct() {
    }
}