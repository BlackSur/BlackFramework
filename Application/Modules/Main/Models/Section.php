<?php
namespace Application\Modules\Main\Models;

class Section extends \Black\Models\Model
{
    public $allSections;
    public static $newsBySection = array();

    public function __construct()
    {
    }

    public function getForSection($section, $exceptId = null, $limit = null)
    {
        $newsModel = new \Application\Modules\Main\Models\News();
        $articles = $newsModel->getAll()
            ->mapAs('News')
            ->setConditions(array('section' => $section))
            ->orderBy(array('id' => 'DESC'))
            ->setLimit($limit)
            ->fetchAll();


        if (!is_null($exceptId)) {
            foreach ($articles as $key => $article) {
                if ($article->id == $exceptId) {
                    unset($articles[$key]);
                }
            }
        }

        return $articles;
    }

    public function getAllFromConfig()
    {
        if (empty($this->allSections)) {
            $this->allSections = \Black\Config\Config::getFromFile('/Entity/DataSources/sectionsAvailable.php');
        }

        return $this->allSections;
    }

    public function getSection($sectionId)
    {
        if (empty($this->allSections[$sectionId])) {
            $this->getAllFromConfig();
        }

        return $this->allSections[$sectionId];
    }
}
