<?php
class Controller {
    public static function loadTemplate($templateName, $args = null)
    {
        if (!empty($args)) {
            $data = $args;
        }
        $data['ajaxUrl'] = '' . _BASE_URL_ . 'asideAjax';
        include dirname(dirname(__FILE__)) . '/views/' . $templateName . '.php';
    }
    
    public static function loadAdminTemplate($templateName, $args = null)
    {
        if (!empty($args)) {
            $data = $args;
        }
        $data['ajaxUrl'] = '' . _BASE_URL_ . 'asideAjax';
        include dirname(dirname(__FILE__)) . '/views/admin/' . $templateName . '.php';
    }
}