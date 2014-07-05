<?php
namespace Application\Modules\Admin\Controllers;

class EntityController extends Base
{

    public function IndexAction()
    {
        $entites = \Black\Entity\Manager::getAll();
        $this->view->entites = $entites;
    }

    public function browseAction()
    {
        $entity = $this->_getEntityFromRequest();
        $mapper = new \Black\Entity\TableMapper($entity);

        $tableData = $mapper->getForListing();

        $this->view->entity = $entity;
        $this->view->data = $tableData;
    }



    public function editAction()
    {
        $entity = $this->_getEntityFromRequest();
        $this->view->entity = $entity;

        $formBuilder = new \Black\Form\FormBuilder();
        $formBuilder->entity = $entity;

        $entityId = $this->request->getParam('entityId');
        $model = new \Black\Entity\Model();
        $model->setEntity($entity);
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
        $model->setEntity($entity);
        $updateResult = $model->updateById($entityId, $_POST);
        if ($updateResult) {
            \Black\FlashMessage\FlashMessage::addSuccess('Successfully updated!.');
        } else {
            \Black\FlashMessage\FlashMessage::addError('Error updating record.');
        }

        header('Location: ' . $this->request->getSelfUrl());
    }

    public function createAction()
    {
        $entity = $this->_getEntityFromRequest();
        $this->view->entity = $entity;

        $formBuilder = new \Black\Form\FormBuilder();
        $formBuilder->entity = $entity;

        $form = $formBuilder->createFromEntity();
        $this->view->form = $form;
    }


    public function createPostAction()
    {
        $entity = $this->_getEntityFromRequest();

        $model = new \Black\Entity\Model();
        $model->setEntity($entity);
        $insertResult = $model->insert($this->request->getPostData());
        if ($insertResult) {
            \Black\FlashMessage\FlashMessage::addSuccess('Successfully created!.');
        } else {
            \Black\FlashMessage\FlashMessage::addError('Error creating record.');
        }

        header('Location: ' . $this->request->getSelfUrl());
    }


    public function deleteAction()
    {
        $entity = $this->_getEntityFromRequest();

        $entityId = $this->request->getParam('entityId');
        $model = new \Black\Entity\Model();
        $model->setTable(strtolower($entity->name));
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
        $entityName = ucfirst(trim($this->request->getParam('entityName')));
        $entity = \Black\Entity\Manager::getEntity($entityName);
        return $entity;
    }
}
