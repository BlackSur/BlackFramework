<?php
namespace Application\Modules\Admin\Controllers;

class HomeController extends Base
{

    public function IndexAction()
    {
        //revisar
        \Black\Config\Config::$appConfig->Admin->layout = 'Admin\Views\Layouts\simple.phtml';
        $this->view->styles[] = '/Assets/css/admin.signin.css';


    }

}
