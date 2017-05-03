<?php

/**
 * 用户模块，一般与数据库表名对应
 * 例如表名为：item，那么Model类名应该为：ItemModel
 * 也可以添加一个$_table属性指定表名
 */
class ItemModel extends Model
{
    public $_table = 'item';
}