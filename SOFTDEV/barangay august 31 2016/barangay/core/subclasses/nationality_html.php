<?php
require_once 'nationality_dd.php';
class nationality_html extends html
{
    function __construct()
    {
        $this->fields        = nationality_dd::load_dictionary();
        $this->relations     = nationality_dd::load_relationships();
        $this->subclasses    = nationality_dd::load_subclass_info();
        $this->table_name    = nationality_dd::$table_name;
        $this->readable_name = nationality_dd::$readable_name;
    }
}
