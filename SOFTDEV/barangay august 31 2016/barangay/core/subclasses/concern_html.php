<?php
require_once 'concern_dd.php';
class concern_html extends html
{
    function __construct()
    {
        $this->fields        = concern_dd::load_dictionary();
        $this->relations     = concern_dd::load_relationships();
        $this->subclasses    = concern_dd::load_subclass_info();
        $this->table_name    = concern_dd::$table_name;
        $this->readable_name = concern_dd::$readable_name;
    }
}
