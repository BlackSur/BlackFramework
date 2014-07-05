<?php
namespace Black\Entity;

class DataSource
{
    public static $datas = array();


    public static function get($key)
    {
        if (empty(self::$datas[$key])) {
            $key = ucfirst($key);
            $class = '\\Entity\\DataSources\\' . $key;
            self::$datas[$key] = (new  $class())->getData();
        }
        return self::$datas[$key];
    }
}
