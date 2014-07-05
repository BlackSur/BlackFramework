<?php
namespace Application\Modules\Main\Controllers;

class SectionController extends Base
{


    public function indexAction()
    {
        $sectionId = $this->request->getParam('sectionId');

        $sectionModel = new \Application\Modules\Main\Models\Section();

        $this->view->currentSection = $sectionModel->getSection($sectionId);

        $this->view->sectionArticles = $sectionModel->getForSection(
            $sectionId,
            null,
            ['10']
        );

        $this->view->sectionArticlesRightColumn = $sectionModel->getForSection(
            $sectionId,
            null,
            ['10', '20']
        );
    }
}
