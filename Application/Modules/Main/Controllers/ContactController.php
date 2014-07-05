<?php
namespace Application\Modules\Main\Controllers;

class ContactController extends \Black\Controller\Controller
{

    public $alguna;

    public function IndexAction()
    {


        $form = new \Application\Modules\Main\Forms\ContactForm();
        $this->view->form = $form;
    }
}
