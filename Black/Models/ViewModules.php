<?php
namespace Black\Models;

class ViewModules extends Model
{

    public function __construct()
    {
        parent::__construct();
        $entity = \Black\Entity\Manager::getEntity('Module');
        $this->setEntity($entity);
    }

    public function getAllForPage()
    {
        $all = $this->getAll()
            ->setConditions(array('enabled' => 1))
            //->orderBy(array('id' => 'DESC', 'date_created' => 'ASC'))
            ->fetchAll();
        return $all;
    }
}
