<?php
namespace Application\Modules\Admin\Controllers;

//should extend from BASE??...
class UploadController extends \Black\Controller\Controller
{

    public $uploadPath;

    public function uploadPostAction()
    {
        $this->view->disableView();

        $uploadFolder = !empty($_POST['uploadFolder']) ? preg_replace("/[^a-zA-Z\/]+/", "", $_POST['uploadFolder']) : '/unknown';
        $forEntity = !empty($_POST['forEntity']) ? preg_replace("/[^a-zA-Z]+/", "", $_POST['forEntity']) : 'unknown';
        $toFieldName = !empty($_POST['toFieldName']) ? preg_replace("/[^a-zA-Z]+/", "", $_POST['toFieldName']) : '';

        $this->basePath = '/Assets/uploads' . $uploadFolder;
        $this->uploadPath = \Black\Config\Config::$paths->uploads . $uploadFolder;
        $this->fileModel = new \Black\Models\File();

        // A list of permitted file extensions
        $allowed = array('png', 'jpg', 'gif', 'swf', 'flv');

        if(isset($_FILES[$toFieldName]) && $_FILES[$toFieldName]['error'] == 0) {

            $extension = strtolower(pathinfo($_FILES[$toFieldName]['name'], PATHINFO_EXTENSION));

            if(!in_array($extension, $allowed)){
                //echo "extension [{$extension}] not allowed";
                echo '{"status":"error", "message": "Extension not allowed."}';
                exit;
            }

            $latestId = $this->fileModel->getMaxId();
            $latestId++;
            $newName = $latestId . '.' . $extension;

            $fileType = 'unknown';

            if (in_array(exif_imagetype($_FILES[$toFieldName]['tmp_name']), array(IMAGETYPE_PNG, IMAGETYPE_JPEG, IMAGETYPE_GIF))) {
                $fileType = 'image';
            } else if(in_array($extension, array('swf', 'flv'))) {
                $fileType = 'flash';
            }


            if( move_uploaded_file($_FILES[$toFieldName]['tmp_name'], $this->uploadPath . '/' . $newName)){

                $this->fileModel->insert([
                    'id' => $latestId,
                    'title' => $newName,
                    'comments' => '',
                    'name' => $newName,
                    'originalName' => $_FILES[$toFieldName]['name'],
                    'path' => $this->basePath  . '/' . $newName,
                    'type' => $fileType,
                    'forEntity' => $forEntity,
                    'enabled' => '1',
                ]);
                //echo "OK moving: " . $_FILES[$toFieldName]['tmp_name'] . " to: ". $this->uploadPath . '/' . $newName;
                echo '{"status":"success", "fileName": "' . $this->basePath . '/' . $newName . '"}';
                exit;
            } else {
                //echo "error moving: " . $_FILES[$toFieldName]['tmp_name'] . " to: ". $this->uploadPath . '/' . $newName;
                echo '{"status":"error", "message": "error moving: ' . $_FILES[$toFieldName]['tmp_name'] . ' to: '. $this->uploadPath . '/' . $newName . '"}';
            }
        }

        echo '{"status":"error", "message": "Nothing to do..."}';

    }
}
