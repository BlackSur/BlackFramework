<?php
namespace Application\Entity;

Class Module extends \Black\Entity\Base
{
    protected $name = 'Module';
    protected $tableName = 'modules';
    protected $displayAs = 'Modules';

    public $fieldsDefinitions;

    public function __construct()
    {
        $this->fieldsDefinitions = (object) array(
            'title' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
                'showAs' => 'Titulo',
            ),
            'type' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
                'formFieldType' => 'select',
                'extraData' => [
                    'elementData' => [
                        // 'fires' => [
                        //     'Gallery' => 'getAllGalleries',
                        //     //'newsSlider' => 'getAllNewsCategories'
                        // ],
                        'fillOthers' => [
                            'NewsSlider' => [
                                'parameters' => include __DIR__ . '/DataSources/newsPlaceHolders.php',
                            ],
                            'Banner' => [
                                'parameters' => \Black\Entity\DataSource::get('AvailableBanners'),
                            ],
                            'Gallery' => [
                                'parameters' => \Black\Entity\DataSource::get('AvailableGalleries'),
                            ],
                            'html' => [
                                'parameters' => \Black\Entity\DataSource::get('ModulesParameters'),
                            ],
                        ]
                    ]
                ],
                'dataSource' => \Black\Entity\DataSource::get('AvailableModules'),
            ),
            'parameters' => (object) array(
                'type' => 'text',
                'formFieldType' => 'select',
                'dataSource' => \Black\Entity\DataSource::get('ModulesParameters'),
            ),
            'html' => (object) array(
                'type' => 'text',
                'formFieldType' => 'textarea',
                'rows' => 10,
            ),
            'pages' => (object) array(
                'type' => 'text',
                'formFieldType' => 'selectMultiple',
                'serialized' => true,
                'dataSource' => \Black\Entity\DataSource::get('AvailablePages'),
            ),
            'placeholders' => (object) array(
                'type' => 'text',
                'formFieldType' => 'selectMultiple',
                'serialized' => true,
                'dataSource' => include __DIR__ . '/DataSources/modulePlaceHolders.php',
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
