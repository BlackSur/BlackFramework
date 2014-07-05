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
        echo "<div style='clear: both; padding: 10px; margin: 10px; border: 1px solid blue;'><pre><p>".__METHOD__. ":" .__LINE__."</p>";
        var_dump($this->config);
        echo "</pre></div>";
    }
}