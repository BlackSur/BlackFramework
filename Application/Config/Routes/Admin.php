<?php

$routes2 = array(
    'adminHome' => array(
        'method' => 'GET|POST',
        'url' => '/admin',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'HomeController',
            'action' => 'IndexAction'
        )
    ),
    'adminLogin' => array(
        'method' => 'GET|POST',
        'url' => '/admin/login',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'UserController',
            'action' => 'loginAction'
        )
    ),
    'adminLogout' => array(
        'method' => 'GET|POST',
        'url' => '/admin/logout',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'UserController',
            'action' => 'logoutAction'
        )
    ),
    'adminEntities' => array(
        'method' => 'GET|POST',
        'url' => '/admin/entities',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'EntityController',
            'action' => 'IndexAction'
        )
    ),
    // ENTITY CREATE
    'adminEntitiesCreate' => array(
        'method' => 'GET',
        'url' => '/admin/entity/create/[a:entityName]',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'EntityController',
            'action' => 'createAction'
        )
    ),
    'adminEntitiesCreatePost' => array(
        'method' => 'POST',
        'url' => '/admin/entity/create/[a:entityName]',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'EntityController',
            'action' => 'createPostAction'
        )
    ),

    'adminEntitiesEdit' => array(
        'method' => 'GET',
        'url' => '/admin/entity/edit/[a:entityName]/[i:entityId]',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'EntityController',
            'action' => 'editAction'
        )
    ),
    'adminEntitiesPostEdit' => array(
        'method' => 'POST',
        'url' => '/admin/entity/edit/[a:entityName]/[i:entityId]',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'EntityController',
            'action' => 'editPostAction'
        )
    ),
    'adminEntitiesBrowse' => array(
        'method' => 'GET',
        'url' => '/admin/entity/browse/[a:entityName]',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'EntityController',
            'action' => 'browseAction'
        )
    ),

    // DELETE
    'adminEntityDelete' => array(
        'method' => 'GET',
        'url' => '/admin/entity/delete/[a:entityName]/[i:entityId]',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'EntityController',
            'action' => 'deleteAction'
        )
    ),

    // ENTITY MANAGER
    'adminEntityManager' => array(
        'method' => 'GET',
        'url' => '/admin/entity/delete/[a:entityName]/[i:entityId]',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'EntityController',
            'action' => 'deleteAction'
        )
    ),

    'adminEntitiesPostUploadAjax' => array(
        'method' => 'POST',
        'url' => '/admin/upload',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'UploadController',
            'action' => 'uploadPostAction'
        )
    ),

    // Ajax
    'adminAjaxGets' => array(
        'method' => 'GET',
        'url' => '/admin/ajax/gets/[a:entityName]',
        'target' => array(
            'module' => 'Admin',
            'controller' => 'AjaxController',
            'action' => 'getsAction'
        )
    ),
);

return $routes2;
