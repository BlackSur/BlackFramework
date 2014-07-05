<?php
namespace Application\Entity;

Class Video extends \Black\Entity\Base
{
    protected $name = 'Video';
    protected $tableName = 'videos';
    protected $displayAs = 'Videos';

    public $fieldsDefinitions;

    public function __construct()
    {
        $this->fieldsDefinitions = (object) array(
            'title' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
                'showAs' => 'Titulo',
            ),
            'link' => (object) array(
                'type' => 'text',
                'showInBrowse' => true,
            ),
        );

        return $this->fieldsDefinitions;
    }

}
