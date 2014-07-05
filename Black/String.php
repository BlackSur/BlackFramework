<?php
namespace Black;
class String {

    public static function extractNumbers($string)
    {
        preg_match_all('@\d+@', $string, $matches);
        return isset($matches[0][0]) ? (int)$matches[0][0] : null;
    }

    public static function cleanAplha($string)
    {
        return preg_replace("/[^A-Za-z0-9 ]/", '', $string);;
    }

    public static function truncate($string, $chars = 30)
    {
        $length = strlen($string);
        if ($length > $chars) {
            $string = substr($string, 0, $chars);
            $string = $string . "...";
        }
        return $string;
    }

    public static function slugify($string, $space="-")
    {
        if (function_exists('iconv')) {
            $string = @iconv('UTF-8', 'ASCII//TRANSLIT', $string);
        }
        $string = preg_replace("/[^a-zA-Z0-9 -]/", "", $string);
        $string = strtolower($string);
        $string = str_replace(" ", $space, $string);
        return $string;
    }

    public static function brnl($text)
    {
      $breaks = array('<br />', '<br>', '<br/>');
      return str_ireplace($breaks, "\r\n", $text);
    }


    public static function sanitize($text)
    {
    }
}
