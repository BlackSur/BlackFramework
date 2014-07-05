<?php
namespace Application\Entity;

Class Gallery extends \Black\Entity\Base
{
    protected $name = 'Gallery';
    protected $tableName = 'galleries';
    protected $displayAs = 'Galleries';

    public $fieldsDefinitions;

    public function __construct()
    {
        $this->fieldsDefinitions = (object) array(
            'title' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
                'showAs' => 'Titulo',
            ),
            'images' => (object) array(
                'type' => 'text',
                'label' => 'Select images',
                'formFieldType' => 'imagePickerMultiple',
                'serialized' => true,
                'dataSource' => \Black\Entity\DataSource::get('AvailableImages'),
            ),
            'enabled' => (object) array(
                'type' => 'text',
                'formFieldType' => 'select',
                'dataSource' => [
                    '0' => 'Disabled',
                    '1' => 'Enabled'
                ]
            ),
        );

        return $this->fieldsDefinitions;
    }

}
