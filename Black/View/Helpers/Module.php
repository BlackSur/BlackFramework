<?php
namespace Black\View\Helpers;

class Module
{
    public function __construct($view)
    {
        $this->view = $view;
    }

    public function init($placeHolder)
    {
        $ret = '';
        $currentPageRouteName = \Black\Request\Request::$route['name'];

        foreach ($this->view->vars['allModules'] as $key => $module) {

            $placeholders = $module->unserialize('placeholders');
            $pages = $module->unserialize('pages');

            if (
                is_array($placeholders) &&
                in_array($placeHolder, $placeholders) &&
                is_array($pages) &&
                in_array($currentPageRouteName, $pages)
                ) {

                switch($module->type) {
                    case 'html':
                        $ret = $module->html;
                        break;
                    case 'Gallery':
                        ob_start();
                        include $this->view->viewBasePath . '/Modules/Gallery.phtml';
                        $ret = ob_get_clean();
                        break;
                    case 'NewsSlider':
                        ob_start();
                        include $this->view->viewBasePath . '/Modules/NewsSlider.phtml';
                        $ret = ob_get_clean();
                        break;
                    case 'Banner':
                        ob_start();
                        include $this->view->viewBasePath . '/Modules/Banner.phtml';
                        $ret = ob_get_clean();
                        break;
                }

            }

        }
        return $ret;
    }
}
