<?php
namespace Application\Modules\Main\Controllers;

class Base extends \Black\Controller\Controller
{

    public $models;

    public function init()
    {
        parent::init();

        $model = new \Black\Models\ViewModules();
        $viewModules = $model->getAllForPage();
        $this->view->allModules = $viewModules;

        //SITE SPECIFICS
        $this->models = new \stdClass;
        $this->models->section = new \Application\Modules\Main\Models\Section();
        $this->models->news = new \Application\Modules\Main\Models\News();

        $this->view->allNewsSections = $this->models->section->getAllFromConfig();
    }
}
