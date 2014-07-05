<?php
namespace Black\FlashMessage;

class FlashMessage
{
    public static $messages = array(
        'success' => array(),
        'error' => array(),
        'info' => array(),
        'warning' => array(),
    );

    public static function addSuccess($message = '')
    {
        array_push(self::$messages['success'], $message);
        \Black\Session\Session::set('FlashMessage_Success', self::$messages['success']);
    }


    public static function addError($message = '')
    {
        array_push(self::$messages['error'], $message);
        \Black\Session\Session::set('FlashMessage_Error', self::$messages['error']);
    }

    public static function getSuccessMessages()
    {
        $messages = \Black\Session\Session::get('FlashMessage_Success');
        \Black\Session\Session::del('FlashMessage_Success');
        return $messages;
    }

    public static function getErrorMessages()
    {
        $messages = \Black\Session\Session::get('FlashMessage_Error');
        \Black\Session\Session::del('FlashMessage_Error');
        return $messages;
    }
}
