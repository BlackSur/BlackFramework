<?php
namespace Entity\DataSources;

class AvailablePages
{

    public function getData()
    {
        $routes = \Black\Config\Config::$routes;

        $return = array();

        foreach ($routes as $key => $value) {
            if (stripos($key, 'admin') === false) {
                $return[$key] = $value['url'];
            }

        }

        return $return;
    }
}

