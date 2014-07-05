<?php
namespace Black\Models;

class File extends Model
{

    public function __construct()
    {
        parent::__construct();
        $entity = \Black\Entity\Manager::getEntity('File');
        $this->setEntity($entity);
    }
    public function getMaxId()
    {
        return parent::getMaxId();
    }
}
