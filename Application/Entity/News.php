<?php
namespace Application\Entity;

Class News extends \Black\Entity\Base
{
    protected $name = 'News';
    protected $tableName = 'news';
    protected $displayAs = 'News';

    public $fieldsDefinitions;

    public function __construct()
    {
        $this->fieldsDefinitions = (object) array(
            'title' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
                'showAs' => 'Titulo',
            ),
            'intro' => (object) array(
                'type' => 'text',
                'formFieldType' => 'textarea',
            ),

            'body' => (object) array(
                'type' => 'text',
                'formFieldType' => 'textarea',
                'rows' => 10,
            ),
            'image' => (object) array(
                'type' => 'text',
                'label' => 'Seleccionar archivo...',
                'formFieldType' => 'fileAjax',
            ),
            'section' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
                'formFieldType' => 'select',
                'dataSource' => include __DIR__ . '/DataSources/sectionsAvailable.php',
            ),
            'placeholder' => (object) array(
                'type' => 'text',
                'formFieldType' => 'select',
                'label' => 'Ubicación',
                'showInBrowse' => true,
                'dataSource' => include __DIR__ . '/DataSources/newsPlaceHolders.php',
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

    public function getAjaxUploadConfigurations()
    {
        return [
            'uploaderUrl' => '/admin/upload',
            'uploadFolder' => '/news',
            'forEntity' => 'News',
            'toFieldName' => 'image',
        ];
    }

}
