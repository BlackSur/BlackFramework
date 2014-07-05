<?php
namespace Entity\DataSources;

class AvailableImages
{

    public function getData()
    {
        $entity = \Black\Entity\Manager::getEntity('File');
        $model = new \Black\Entity\Model();
        $model->setEntity($entity);
        $all = $model->getAll()
            ->setConditions(array('type' => 'image'))
            ->orderBy(array('id' => 'DESC'))
            ->fetchAll();

        $return = array();

        foreach ($all as $key => $value) {
            $return[$value->id] = $value->path;
        }

        return $return;
    }
}



