<?php
namespace Black\Config;

class Config
{
    public static $paths;
    public static $appConfig = array();
    public static $formsConfig = array();
    public static $routes;

    public static $filesConfig = array();

    public static function initPaths()
    {
        $thisDir = dirname(__FILE__);
        $paths = new \stdClass;
        $paths->framework = realpath($thisDir. '/../');
        $paths->base = realpath($thisDir . '/../../');
        $paths->application = realpath($thisDir . '/../../Application/');
        $paths->assetsBase = '/Assets/';
        $paths->uploads = realpath($thisDir . '/../../Assets/uploads/');
        self::$paths = $paths;
    }


    public static function loadAppConfig()
    {
        $iniFile = self::$paths->base . '/Application/Config/Application.ini';

        if (file_exists($iniFile)) {
            $conf = parse_ini_file($iniFile, true);
            $allConfigs = array_merge($conf, self::$appConfig);
            self::$appConfig = \Black\Object\Object::arrayToObject($allConfigs);
        }

    }

    public static function getFormConfig($form)
    {
        if (empty(self::$formsConfig[$form])) {
            $iniFile = self::$paths->base . '/Application/Config/Forms/' . ucfirst($form) . '.ini';

            if (file_exists($iniFile)) {
                $conf = \Black\Config\Ini::parse($iniFile, true);

                self::$formsConfig[$form] = \Black\Object\Object::arrayToObject($conf);

            }
        }
        return self::$formsConfig[$form];
    }


    public static function loadRoutes()
    {
        $routes = self::$paths->base . '/Application/Config/Routes/Application.php';

        if (file_exists($routes)) {
            $allRoutes = include $routes;
            foreach ($allRoutes as $name => $route) {
                if (empty($route['method'])) {
                    $route['method'] = 'GET|POST';
                }
                if (empty($route['target']['controller'])) {
                    $route['target']['controller'] = 'PageController';
                }
                if (empty($route['target']['action'])) {
                    $route['target']['action'] = 'IndexAction';
                }
            }
            self::$routes = $allRoutes;

        }
    }

    public static function getFromFile($file)
    {
        if (empty(self::$filesConfig[$file])) {
            self::$filesConfig[$file] = null;
            $fileFullPath = realpath(self::$paths->base . '/Application/' . $file);

            if ($fileFullPath !== false) {
                self::$filesConfig[$file] = include $fileFullPath;
            } else {
                throw new \Exception("File not found: {$file}", 1);

            }
        }
        return self::$filesConfig[$file];
    }
}
