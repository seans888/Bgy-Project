<?php
require_once 'zone_dd.php';
class zone_html extends html
{
    function __construct()
    {
        $this->fields        = zone_dd::load_dictionary();
        $this->relations     = zone_dd::load_relationships();
        $this->subclasses    = zone_dd::load_subclass_info();
        $this->table_name    = zone_dd::$table_name;
        $this->readable_name = zone_dd::$readable_name;
    }
}
