<?php
namespace Black\Controller;

class Controller
{
    public $view;

    public function init()
    {

        $this->view = new \Black\View\View();
    }
}
