<?php
namespace app\models;

use fastphp\base\Model;
use fastphp\db\Db;

/**
 * 用户Model
 */
class Tag extends Model
{
    /**
     * 自定义当前模型操作的数据库表名称，
     * 如果不指定，默认为类名称的小写字符串，
     * 这里就是 tag 表
     * @var string
     */
    protected $table = 'tag';

}