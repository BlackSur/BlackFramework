<?php
namespace Black;

class Dispatcher {

    public $request;
    public $routes;
    public $match;
    public $module;
    public $namespace;
    public $controller;
    public $controllerClass;
    public $controllerObject;


    public function __construct($routes)
    {
        $this->routes = $routes;
        $this->router = new \Black\Router\Router();

        foreach ($routes as $routeName => $route) {
            $this->router->map(
                $route['method'],
                $route['url'],
                $route['target'],
                $routeName
            );
        }
    }


    public function dispatch()
    {
        $this->match = $this->router->match();
        if ($this->match === false) {
            die('No route found for this URL.');
        }

        $this->match['target']['params'] = $this->match['params'];
        $this->match['target']['method'] = $this->match['method'];
        $this->match['target']['name'] = $this->match['name'];

        \Black\Request\Request::$router = $this->router;
        \Black\Request\Request::$route = $this->match['target'];

        $this->module = $this->match['target']['module'];
        $this->namespace = '\\Application\\Modules\\' . $this->module . '\\Controllers';
        $this->controller =  $this->match['target']['controller'];
        $this->controllerClass = $this->namespace . '\\' . $this->controller;

        if (class_exists($this->controllerClass)) {
            $this->controllerObject = new $this->controllerClass();
            $this->controllerObject->request = $this->request;
            if (method_exists($this->controllerObject, 'init')) {
                $this->controllerObject->init();
            }

            if (method_exists($this->controllerObject, $this->match['target']['action'])) {
                $this->controllerObject->{$this->match['target']['action']}();
            }

            if (method_exists($this->controllerObject, 'postDispatch')) {
                $this->controllerObject->postDispatch();
            }

        }
    }

}
