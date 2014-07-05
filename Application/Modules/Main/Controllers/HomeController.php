<?php
namespace Application\Modules\Main\Controllers;

class HomeController extends Base
{


    public function IndexAction()
    {
        //$allSections = $this->models->section->getAllFromConfig();
        $articles = array();
        $articles['mainArticle'] = $this->models->news->getForPlaceHolder('mainArticle');
        $articles['mainBannerRight'] = $this->models->news->getForPlaceHolder('mainBannerRight');
        $articles['columnOne'] = $this->models->news->getForPlaceHolder('columnOne');
        $articles['columnTwo'] = $this->models->news->getForPlaceHolder('columnTwo');
        $articles['columnThree'] = $this->models->news->getForPlaceHolder('columnThree');
        $articles['middleBottom'] = $this->models->news->getForPlaceHolder('middleBottom');
        $articles['footer'] = $this->models->news->getForPlaceHolder('footer');

        $this->view->articles = $articles;
    }
}
