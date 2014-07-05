<?php

namespace Black\Form;

class Form
{
    public $vars;
    public $viewBasePath;
    public $config;

    public $includeAjaxJS = null;

    public function __construct()
    {


    }

    public function getFormDetails()
    {

    }

    public function getElements()
    {
        $elements = array();

        foreach ($this->config->elements as $element) {
            $elements[] = $this->getElement($element);

        }
        return $elements;
    }

    public function getElement($element)
    {
        $labelText = !empty($element->label) ? $element->label : '';
        $elementValue = !empty($element->value) ? $element->value : '';
        $elementName = !empty($element->name) ? $element->name : '';
        $elementId = !empty($element->id) ? $element->id : $elementName;
        $elementClass = !empty($element->class) ? $element->class : '';
        $elementType = !empty($element->type) ? $element->type : '';
        $elementPlaceHolder = !empty($element->placeholder) ? $element->placeholder : '';
        $elementRows = !empty($element->rows) ? $element->rows : '3';
        $elementOptions = !empty($element->options) ? $element->options : [];
        $elementExtraData = !empty($element->extraData) ? $element->extraData : [];

        $elementHtml = '';

        switch (strtoupper($elementType)) {
            case 'HIDDEN':
                $elementHtml = include $this->viewBasePath . '/hidden.phtml';
                break;

            case 'TEXTAREA':
                $elementHtml = include $this->viewBasePath . '/textarea.phtml';
                break;

            case 'SELECTMULTIPLE':
                $elementMultiple = 'multiple';
                $elementName .= '[]';
                $elementHtml = include $this->viewBasePath . '/select.phtml';
                break;
            case 'SELECT':
                $elementMultiple = '';
                $elementHtml = include $this->viewBasePath . '/select.phtml';
                break;

            case 'EMAIL':
            case 'TEXT':
                $elementHtml = include $this->viewBasePath . '/text.phtml';
                break;
            case 'FILEAJAX':
                $this->config->form->enctype = 'multipart/form-data';
                //$this->config->form->action = '/admin/upload/news';
                $this->includeAjaxJS[] = 'ajaxFileUpload';
                $elementHtml = include $this->viewBasePath . '/fileAjax.phtml';
                break;
            case 'IMAGEPICKERMULTIPLE':
                $this->includeAjaxJS[] = 'imagePicker';
                $elementHtml = include $this->viewBasePath . '/imagePicker.phtml';
                break;
            case 'FILEPREVIEW':
                //$this->config->form->enctype = 'multipart/form-data';
                //$this->config->form->action = '/admin/upload/news';
                //$this->includeAjaxJS = true;
                $elementHtml = include $this->viewBasePath . '/filePreview.phtml';
                break;
            case 'SUBMIT':
            case 'BUTTON':
                $elementHtml = include $this->viewBasePath . '/submit.phtml';
                break;
        }

        return $elementHtml;
    }

    public function render()
    {
        $content = '';

        $this->viewBasePath = realpath(\Black\Config\Config::$paths->application . $this->config->form->view);
        $formView = $this->viewBasePath . '/form.phtml';

        $elements = $this->getElements();
        $formAction = !empty($this->config->form->action) ? $this->config->form->action : '';
        $formId = !empty($this->config->form->id) ? $this->config->form->id : '';
        $formMethod = !empty($this->config->form->method) ? $this->config->form->method : 'post';
        $formClass = !empty($this->config->form->class) ? $this->config->form->class : '';
        $formEnctype = !empty($this->config->form->enctype) ? $this->config->form->enctype : '';

        $includeAjaxJS = $this->includeAjaxJS;

        if ($includeAjaxJS) {
            $ajaxUrl = '/admin/upload/news';
        }

        $content = implode("\n", $elements);


        $formHtml = include $formView;
        return $formHtml;

    }
}
