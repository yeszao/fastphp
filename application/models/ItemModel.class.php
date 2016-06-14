<?php

class ItemModel extends Model
{
    /** 新增数据，实际应用一般放在基类，提高复用 **/
    function add($value)
    { 
        $sql = sprintf("insert into `%s` (`item_name`) values ('%s')", $this->_table, $value);

        return $this->query($sql);
    }
    
    /** 修改数据 **/
    function update($id, $value)
    {
        $sql = sprintf("update `%s` set item_name = '%s' where `id` = '%s'", $this->_table, $value, $id);

        return $this->query($sql);
    }    
}