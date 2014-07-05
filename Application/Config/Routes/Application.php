<?php

$routes = array(
    'home' => array(
        'method' => 'GET|POST',
        'url' => '/',
        'target' => array(
            'module' => 'Main',
            'controller' => 'HomeController',
            'action' => 'IndexAction'
        )
    ),

    'article' => array(
        'method' => 'GET',
        'url' => '/article/[i:articleId]',
        'target' => array(
            'module' => 'Main',
            'controller' => 'ArticleController',
            'action' => 'indexAction'
        )
    ),

    'section' => array(
        'method' => 'GET',
        'url' => '/section/[a:sectionId]',
        'target' => array(
            'module' => 'Main',
            'controller' => 'SectionController',
            'action' => 'indexAction'
        )
    ),

    'search' => array(
        'method' => 'POST',
        'url' => '/search',
        'target' => array(
            'module' => 'Main',
            'controller' => 'SearchController',
            'action' => 'searchPostAction'
        )
    ),
    'searchStatic' => array(
        'method' => 'GET',
        'url' => '/search/[:phrase]',
        'target' => array(
            'module' => 'Main',
            'controller' => 'SearchController',
            'action' => 'indexAction'
        )
    ),
    'help' => array(
        'method' => 'GET|POST',
        'url' => '/help',
        'target' => array(
            'module' => 'Main',
            'controller' => 'PageController',
            'action' => 'HelpAction'
        )
    ),


    'contact' => array(
        'method' => 'GET|POST',
        'url' => '/contact',
        'target' => array(
            'module' => 'Main',
            'controller' => 'ContactController',
            'action' => 'IndexAction'
        )
    ),

    'blog' => array(
        'method' => 'GET|POST',
        'url' => '/blog',
        'target' => array(
            'module' => 'Main',
            'controller' => 'BlogController',
            'action' => 'BlogAction'
        )
    ),

    'toprueba' => array(
        'method' => 'GET|POST',
        'url' => '/toprueba',
        'target' => array(
            'module' => 'Main',
            'controller' => 'PageController',
            'action' => 'TopruebaAction'
        )
    ),
);

$adminRoutes = include 'Admin.php';

return array_merge($adminRoutes, $routes);
