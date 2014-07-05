<?php
namespace Black\File;

class File
{

    public static function scandir($folder, $removeExtensions = false)
    {
        $files = scandir($folder);

        foreach ($files as $key => $file) {
            if ($file === '.' || $file === '..') {
                unset($files[$key]);
                continue;
            }
            if ($removeExtensions) {
                $temp = explode('.', $file);
                $ext = array_pop($temp);
                $files[$key] = implode('.', $temp);
            }

        }

        return $files;
    }

    public static function getFileNamesInFolder($folder)
    {
        $basePath = \Black\Config\Config::$paths->base;
        $folder = realpath($basePath . $folder);
        $filesNames = self::scandir($folder, true);
        return array_filter($filesNames);
    }
}
