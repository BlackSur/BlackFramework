<?php
namespace Application\Modules\Main\Models;

class News extends \Black\Models\Model
{
    public function __construct()
    {
        parent::__construct();
        $entity = \Black\Entity\Manager::getEntity('News');
        $this->setEntity($entity);
    }


    public function getForPlaceHolder($placeHolder)
    {
        $all = $this->getAll()
            ->setConditions(array('placeholder' => $placeHolder))
            ->orderBy(array('id' => 'DESC'))
            ->fetchAll();
        return $all;
    }


    public function getForSearch($phrase)
    {
        $all = $this->getAll()
            ->setLikeConditions(array('title' => $phrase, 'intro' => $phrase, 'body' => $phrase))
            ->orderBy(array('id' => 'DESC'))
            ->fetchAll();
        return $all;
    }
}
