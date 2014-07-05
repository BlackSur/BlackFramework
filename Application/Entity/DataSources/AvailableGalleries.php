<?php
namespace Entity\DataSources;

class AvailableGalleries
{

    public function getData()
    {
        $entity = \Black\Entity\Manager::getEntity('Gallery');
        $mapper = new \Black\Entity\TableMapper($entity);
        $allEntities = $mapper->getForListing();

        $return = array();

        foreach ($allEntities->data as $entity) {
            $value = isset($entity->title)
                ? $entity->title : $entity->id;

            $return[$entity->id] = $value;
        }

        return $return;
    }
}



