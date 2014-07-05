<?php
namespace Entity\DataSources;

class AvailableModules
{

    public function getData()
    {
        return [
            'html' => 'HTML - or Plain TXT (Basic)',
            'NewsSlider' => 'A slider with articles.',
            'Banner' => 'A static banner.',
            'Gallery' => 'An image gallery.',
        ];
    }
}

