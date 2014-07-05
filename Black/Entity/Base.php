<?php
namespace Black\Entity;

class Base
{

    public function __get($field)
    {
        if ($field === 'fieldsDefinitionsd') {
            die('here');
        }
        return $this->{$field};
    }

    public function __call($method, $args)
    {

    }

    public function unserialize($property)
    {
        $data = @unserialize($this->{$property});
        if ($data === false) {
            $data = null;
        }
        return $data;
    }

    public function getValueFor($property)
    {
//        $fieldsDefinitions = $this->getFieldsDefinitions();

        if (
            isset($this->fieldsDefinitions->{$property})
            && is_array($this->fieldsDefinitions->{$property}->dataSource)
            && isset($this->fieldsDefinitions->{$property}->dataSource[$this->{$property}])
            ) {
            return $this->fieldsDefinitions->{$property}->dataSource[$this->{$property}];
        }
    }
}
