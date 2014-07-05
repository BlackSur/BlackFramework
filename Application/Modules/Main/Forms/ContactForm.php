<?php
namespace Application\Modules\Main\Forms;

class ContactForm extends \Black\Form\Form
{
    const FORM_NAME = 'Contact';
    public $config;

    public function __construct()
    {
        parent::__construct();

        $this->config = \Black\Config\Config::getFormConfig(self::FORM_NAME);
    }
}
