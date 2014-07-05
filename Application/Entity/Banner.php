<?php
namespace Application\Entity;

Class Banner extends \Black\Entity\Base
{
    protected $name = 'Banner';
    protected $tableName = 'banners';
    protected $displayAs = 'Banners';

    public $fieldsDefinitions;

    public function __construct()
    {
        $this->fieldsDefinitions = (object) array(
            'title' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
                'showAs' => 'Titulo',
            ),
            'file' => (object) array(
                'type' => 'text',
                'label' => 'Seleccionar archivo...',
                'formFieldType' => 'fileAjax',
            ),
            'client' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
                'showAs' => 'Cliente',
            ),
            'clicks' => (object) array(
                'type' => 'integer',
                'showAs' => 'Clicks',
            ),
            'views' => (object) array(
                'type' => 'integer',
                'showAs' => 'Vistas',
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
            'uploadFolder' => '/banners',
            'forEntity' => 'Banner',
            'toFieldName' => 'file',
        ];
    }

}
