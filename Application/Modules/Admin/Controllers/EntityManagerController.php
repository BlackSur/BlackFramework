<?php
namespace Application\Modules\Admin\Controllers;

class EntityManagerController extends Base
{

    public function IndexAction()
    {
        $em = new \Black\Entity\Manager();
        $entityNames = $em->getAll();
        $this->view->names = $entityNames;
    }

    public function browseAction()
    {
        $entity = $this->_getEntityFromRequest();
        $mapper = new \Black\Entity\TableMapper($entity);

        $tableData = $mapper->getForListing();

        $this->view->entity = $entity;
        $this->view->data = $tableData;
    }

    public function createAction()
    {
        $entity = $this->_getEntityFromRequest();

        $formBuilder = new \Black\Form\FormBuilder();
        $formBuilder->entity = $entity;

        $form = $formBuilder->createFromEntity();
        $this->view->form = $form;
    }


    public function editAction()
    {
        $entity = $this->_getEntityFromRequest();
        $this->view->entity = $entity;

        $formBuilder = new \Black\Form\FormBuilder();
        $formBuilder->entity = $entity;

        $entityId = $this->request->getParam('entityId');
        $model = new \Black\Entity\Model();
        $model->table = strtolower($entity->name);
        $entityData = $model->getById($entityId);

        $form = $formBuilder->createFromEntity();
        $form->setValues($entityData);
        $this->view->form = $form;
    }


    public function editPostAction()
    {
        $entity = $this->_getEntityFromRequest();

        $entityId = $this->request->getParam('entityId');
        $model = new \Black\Entity\Model();
        $model->table = strtolower($entity->name);
        $updateResult = $model->updateById($entityId, $this->request->getPostData());
        if ($updateResult) {
            \Black\FlashMessage\FlashMessage::addSuccess('Successfully updated!.');
        } else {
            \Black\FlashMessage\FlashMessage::addError('Error updating record.');
        }

        header('Location: ' . $this->request->getSelfUrl());
    }

    public function createPostAction()
    {
        $entity = $this->_getEntityFromRequest();
        $mapper = new \Black\Entity\TableMapper($entity);

        $entity = $mapper->createFromPostData($_POST);
    }


    public function deleteAction()
    {
        $entity = $this->_getEntityFromRequest();

        $entityId = $this->request->getParam('entityId');
        $model = new \Black\Entity\Model();
        $model->table = strtolower($entity->name);
        $deleteResult = $model->deleteById($entityId);

        if ($deleteResult) {
            \Black\FlashMessage\FlashMessage::addSuccess('Successfully removed!.');
        } else {
            \Black\FlashMessage\FlashMessage::addError('Error removing record.');
        }

        header('Location: /admin/entity/browse/' . $entity->name);
    }

    private function _getEntityFromRequest()
    {
        die;
        $entityName = trim($this->request->getParam('entityName'));
        $entity = \Black\Config\Config::getFromFile('/Entities/' . $entityName . '.php');
        return $entity;
    }
}
