<?php
namespace Black\Entity;

class TableMapper
{
    public $entity;

    public function __construct($entity = null)
    {
        if (!empty($entity)) {
            $this->entity = $entity;
        }

    }

    public function getForListing()
    {
        $model = new \Black\Entity\Model();
        $model->setEntity($this->entity);
        $td = $model->getAll()
            ->orderBy(['id' => 'DESC'])
            ->fetchAll();

        $return = new \stdClass;
        $return->header = array();
        $return->data = $td;

//        $fields = $this->entity->getFieldsDefinitions();
        foreach ($this->entity->fieldsDefinitions as $fieldName => $field) {
            if (!empty($field->showInBrowse)) {
                $column = new \stdClass;
                $column->name = !empty($field->showAs) ? $field->showAs : ucfirst($fieldName);
                $return->header[$fieldName] = $column;
            }
        }

        return $return;
    }
}
