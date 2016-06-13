<?php
 
class ItemModel extends Model
{
    /** 新增数据 **/
    function add($value)
    { 
        $query = 'insert into `'.$this->_table.'` (item_name) values (\''.mysql_real_escape_string($value).'\')';
        return $this->query($query);
    }
    
    /** 新增数据 **/
    function update($id, $value)
    {
        $query = 'update `'.$this->_table.'` set item_name = \''.mysql_real_escape_string($value).'\' where `id` = \''.mysql_real_escape_string($id).'\'';
        return $this->query($query);
    }    
}