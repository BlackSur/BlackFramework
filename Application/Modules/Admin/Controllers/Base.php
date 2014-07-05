<?php
namespace Application\Modules\Admin\Controllers;

class Base extends \Black\Controller\Controller
{
    public $userSession;

    public function init()
    {
        parent::init();

        $this->checkLogin();
    }

    public function checkLogin()
    {
        $this->userSession = \Black\Session\Session::get('user');
        $this->view->userSession = $this->userSession;
        if (isset($this->userSession->isAdmin) && $this->userSession->isAdmin === true) {

        } else {
            \Black\FlashMessage\FlashMessage::addError('Please login.');
           header('Location: /admin/login');
        }
    }
}
