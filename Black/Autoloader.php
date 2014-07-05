<?php
set_include_path(
    get_include_path() .
    PATH_SEPARATOR . __DIR__ .
    PATH_SEPARATOR . __DIR__ . '/../Application/'
); // optional
spl_autoload_register(function ($class) {
    $file = preg_replace('#\\\|_(?!.+\\\)#','/', $class) . '.php';
    if (stream_resolve_include_path($file))
        require $file;
});
