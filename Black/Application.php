<?php
//require 'Black\Autoload\Autoload.php';
//$autoloader = new \Black\Autoload\Autoload;
//$autoloader->setMode($autoloader::MODE_SILENT);
//$autoloader->register();
require 'Autoloader.php';

class Application
{
    public $dispatcher;
    public $config;

    public function __construct()
    {

        $this->request = new \Black\Request\Request();

    }


    public function init()
    {
        \Black\Config\Config::initPaths();
        \Black\Config\Config::loadAppConfig();
        \Black\Config\Config::loadRoutes();

        $this->dispatcher = new \Black\Dispatcher(\Black\Config\Config::$routes);
        $this->dispatcher->request = $this->request;
        $this->dispatcher->dispatch();

        if (is_object($this->dispatcher->controllerObject)) {
            if ($this->dispatcher->controllerObject instanceof \Black\Controller\Controller) {
                $this->dispatcher->controllerObject->view->setUp($this->dispatcher->match['target']);
                $this->dispatcher->controllerObject->view->render();
            } else {

            }

        }
    }
}
