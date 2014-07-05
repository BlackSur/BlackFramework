<?php
namespace Application\Modules\Admin\Controllers;

class UserController extends \Black\Controller\Controller
{

    public function IndexAction()
    {

    }



    public function loginAction()
    {

        //revisar
        \Black\Config\Config::$appConfig->Admin->layout = 'Admin\Views\Layouts\simple.phtml';
        $this->view->styles[] = '/Assets/css/admin.signin.css';

        if (!empty($_POST['email']) && !empty($_POST['password'])) {
            if ($_POST['email'] === 'genteactiva_deportes@yahoo.com.ar' && $_POST['password'] === 'genteactiva2014') {
                $this->userSession = new \stdClass;
                $this->userSession->isAdmin = true;
                $this->userSession->ip = \Black\Request\Request::getIp();
                \Black\Session\Session::set('user', $this->userSession);
                \Black\FlashMessage\FlashMessage::addSuccess('Welcome!.');
                header('Location: /admin/entity/browse/News');

            } else {
                \Black\FlashMessage\FlashMessage::addError('Incorrect login.');
                header('Location: /admin');
            }
        }
    }


    public function logoutAction()
    {
        \Black\Config\Config::$appConfig->Admin->layout = 'Admin\Views\Layouts\simple.phtml';
        $this->view->styles[] = '/Assets/css/admin.signin.css';

        \Black\Session\Session::destroy();
        \Black\FlashMessage\FlashMessage::addError('User disconnected.');
        //header('Location: /');
    }
}
