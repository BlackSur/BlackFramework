<?php
namespace Black\Entity;

class Decorator
{
    public $entity;

    public function __construct($entity)
    {
        $this->entity = $entity;
    }

    public function __get($property)
    {
        if (isset($this->entity->{$property})) {
            return $this->entity->{$property};
        }
    }

    public function __call($name, $args)
    {
        if (method_exists($this->entity, $name)) {
            return call_user_func_array(array($this->entity, $name), $args);
        }
    }


    public function getSingleFor($entityId, $entityType)
    {
        $entity = \Black\Entity\Manager::getEntity($entityType);
        $model = new \Black\Entity\Model();
        $model->setEntity($entity);

        $this->{$entityType} = $model->getById($entityId);
        return $this->{$entityType};
    }


    //@todo REVISAR
    public function getMultipleFor($entityIds, $entityType)
    {
        $entity = \Black\Entity\Manager::getEntity($entityType);
        $model = new \Black\Entity\Model();
        $model->setEntity($entity);

        $all = $model->getAll()
            ->setConditionsIn(array('id' => $entityIds))
            //->orderBy(array('id' => 'DESC', 'date_created' => 'ASC'))
            ->fetchAll();
        return $all;
    }
}
