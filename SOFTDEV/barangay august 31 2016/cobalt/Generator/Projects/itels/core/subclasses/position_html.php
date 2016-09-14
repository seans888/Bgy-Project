<?php
require_once 'position_dd.php';
class position_html extends html
{
    function __construct()
    {
        $this->fields        = position_dd::load_dictionary();
        $this->relations     = position_dd::load_relationships();
        $this->subclasses    = position_dd::load_subclass_info();
        $this->table_name    = position_dd::$table_name;
        $this->readable_name = position_dd::$readable_name;
    }
}
