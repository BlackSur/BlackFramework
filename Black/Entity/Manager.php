<?php
namespace Black\Entity;

class Manager
{

    public static $entities = array();

    public static function getAll()
    {
        if (empty(self::$entities)) {
            $entityFiles = \Black\File\File::getFileNamesInFolder('/Application/Entity/');
            foreach ($entityFiles as $entityName) {
                self::getEntity($entityName);
            }
        }
        return self::$entities;
    }

    public static function getEntity($name)
    {
        if (empty(self::$entities[$name])) {
            $name = ucfirst($name);
            $class = '\\Application\\Entity\\' . $name;
            if (class_exists($class)) {
                self::$entities[$name] = new $class();
            }
        }

        return self::$entities[$name];

    }

    public static function getAll__()
    {
        if (empty(self::$entities)) {
            $entities = \Black\File\File::getFileNamesInFolder('/Application/Config/Entities/');
            foreach ($entities as $name) {
                if (!empty($name)) {
                    self::$entities[$name] = self::getEntity($name);
                }

            }
        }
        return self::$entities;

    }


    public static function getEntity__($name)
    {
        if (empty(self::$entities[$name])) {
            self::$entities[$name] = \Black\Config\Config::getFromFile('/Entities/' . ucfirst($name) . '.php');
        }
        return self::$entities[$name];

    }


}
