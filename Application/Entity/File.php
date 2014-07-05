<?php
namespace Application\Entity;

Class File extends \Black\Entity\Base
{
    protected $name = 'File';
    protected $tableName = 'files';
    protected $displayAs = 'Files';

    public $fieldsDefinitions;

    public function __construct()
    {
        $this->fieldsDefinitions = (object) array(
            'title' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
                'showAs' => 'Titulo',
            ),
            'comments' => (object) array(
                'type' => 'text',
                'formFieldType' => 'textarea',
            ),
            'path' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
                'formFieldType' => 'filePreview',
            ),
            'originalName' => (object) array(
                'type' => 'text',
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
