<?php
namespace Application\Modules\Admin\Controllers;

class AjaxController extends Base
{

    public function getsAction()
    {
        $this->view->disableView();

        $entityName = ucfirst(trim($this->request->getParam('entityName')));
        $entity = \Black\Entity\Manager::getEntity($entityName);

        $mapper = new \Black\Entity\TableMapper($entity);

        $allEntities = $mapper->getForListing();

        $return = array();

        foreach ($allEntities->data as $entity) {
            $value = isset($entity->title)
                ? $entity->title : $entity->id;

            $return[$entity->id] = $value;
        }

        header('Content-Type: application/json');
        echo json_encode($return);
        exit;
    }
}
