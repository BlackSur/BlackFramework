<?php
namespace Black\View;

class View
{

    public $layout;
    public $viewBasePath;
    public $viewPath;
    public $configPaths;
    public $configApp;

    public $useView = true;

    public $vars = array();

    public $helpers;

    public function __construct()
    {
        $this->helpers = new \stdClass;
    }

    public function __set($name, $value) {
        $this->vars[$name] = $value;
    }

    public function __call($name, $args)
    {
        switch ($name) {
            case 'module':
                if (empty($this->helpers->moduleHelper)) {
                    $this->helpers->moduleHelper = new \Black\View\Helpers\Module($this);
                }
                return call_user_func_array(array($this->helpers->moduleHelper, 'init'), $args);
                break;
            default:
                // if (method_exists($this->_htmlView, $method)) {
                //     call_user_func_array(array($this->_htmlView, $method), $args);
                // }
                break;
        }

    }

    public function disableView()
    {
        $this->useView = false;
    }

    public function setUp($controllerInfo)
    {

        if ($this->useView === false) { return; }

        $this->configPaths = \Black\Config\Config::$paths;
        $this->configApp = \Black\Config\Config::$appConfig;

        //D:\Dropbox\SITIOS\blackfw.com\Application\Modules\Main\Views\Home\index.phtml



        $moduleLayout = !empty($this->configApp->{$controllerInfo['module']}->layout) ?
            $this->configApp->{$controllerInfo['module']}->layout : $this->configApp->Main->layout;

        $this->layout = empty($this->layout)
            ? realpath($this->configPaths->application . '/Modules/' . $moduleLayout)
            : $this->layout;

        $controllerFolder = str_replace('Controller', '', $controllerInfo['controller']);
        $viewFileName = str_replace('Action', '', $controllerInfo['action']);

        $applicationPath = \Black\Config\Config::$paths->application;
        $this->viewBasePath = $applicationPath . '/Modules/' . $controllerInfo['module'] . '/Views/';
        $this->viewPath = $this->viewBasePath .
            ucfirst($controllerFolder) . '/' . strtolower($viewFileName) . '.phtml';


    }

    public function render()
    {
        if ($this->useView === false) { return; }

        if (stripos(\Black\Request\Request::$route['method'], 'post') !== false) {
            return;
        }

        $content = null;

        if (file_exists($this->viewPath)) {
            extract($this->vars);
            ob_start();
            include $this->viewPath;
            $content = ob_get_clean();
        } else {
            die('View file not found: ' . $this->viewPath);
        }

        if (!empty($content)) {
            header('Content-Type: text/html; charset=utf-8');

            if (!empty($this->layout)) {
                include $this->layout;
            } else {
                include $content;
            }

        }

    }



}
