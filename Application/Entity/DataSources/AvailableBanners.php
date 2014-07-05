<?php
namespace Entity\DataSources;

class AvailableBanners
{

    public function getData()
    {
        $entity = \Black\Entity\Manager::getEntity('File');
        $model = new \Black\Entity\Model();
        $model->setEntity($entity);
        $all = $model->getAll()
            ->setConditions(array('forEntity' => 'Banner'))
            ->orderBy(array('id' => 'DESC'))
            ->fetchAll();

        $return = array();

        foreach ($all as $key => $value) {
            $return[$value->id] = $value->title;
        }

        return $return;
    }
}



