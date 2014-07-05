<?php

namespace Black\Form;

class FormBuilder extends Form
{
    public $entity;

    public function getEntity()
    {
        return $this->entity;
    }

    public function getConfig()
    {
        return $this->config;
    }

    public function createFromEntity()
    {
        $this->config = new \stdClass;
        $this->config->form = new \stdClass;
        $this->config->form->name = $this->entity->name;
        $this->config->form->action = '';
        $this->config->form->method = 'post';
        $this->config->form->view = '/Modules/Main/Views/Forms/';

        $this->config->elements = new \stdClass;

//        $fields = $this->entity->getFieldsDefinitions();
        foreach ($this->entity->fieldsDefinitions as $name => $field) {

            $this->config->elements->{$name} = new \stdClass;
            $this->config->elements->{$name}->name = $name;
            $this->config->elements->{$name}->type = !empty($field->formFieldType) ?  $field->formFieldType : $field->type;
            $this->config->elements->{$name}->label = !empty($field->label) ?  $field->label :ucfirst($name);

            if (!empty($field->rows)) {
                $this->config->elements->{$name}->rows = $field->rows;
            }

            if (!empty($field->dataSource)) {
                $this->config->elements->{$name}->options = (array)$field->dataSource;
            }

            if (!empty($field->extraData)) {
                $this->config->elements->{$name}->extraData = $field->extraData;
            }
        }

        $this->config->elements->submit = new \stdClass;
        $this->config->elements->submit->name = 'submit';
        $this->config->elements->submit->type = 'submit';
        $this->config->elements->submit->value = 'Save';

        return $this;
    }


    public function setValues($valuesObject)
    {

//        $valuesObject->getFieldsDefinitions();
        foreach ($valuesObject as $key => $value) {
            if (isset($this->config->elements->{$key})) {
                if (!empty($valuesObject->fieldsDefinitions->{$key}->serialized)) {
                    $value = $valuesObject->unserialize($key);
                }
                $this->config->elements->{$key}->value = $value;
            }
        }

        if (!isset($this->config->elements->id)) {
            $this->config->elements->id = new \stdClass;
            $this->config->elements->id->name = 'id';
            $this->config->elements->id->type = 'hidden';
            $this->config->elements->id->value = $valuesObject->id;
        }

        $this->entity = $valuesObject;
    }

    private function _getFormFieldFromType($type)
    {
        switch ($type) {
            case 'textarea':
            break;
        }
    }
}
