<?php
require_once 'health_center_dd.php';
class health_center_html extends html
{
    function __construct()
    {
        $this->fields        = health_center_dd::load_dictionary();
        $this->relations     = health_center_dd::load_relationships();
        $this->subclasses    = health_center_dd::load_subclass_info();
        $this->table_name    = health_center_dd::$table_name;
        $this->readable_name = health_center_dd::$readable_name;
    }
}
