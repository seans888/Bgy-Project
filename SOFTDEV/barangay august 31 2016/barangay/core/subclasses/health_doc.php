<?php
require_once 'documentation_class.php';
require_once 'health_dd.php';
class health_doc extends documentation
{
    function __construct()
    {
        $this->fields        = health_dd::load_dictionary();
        $this->relations     = health_dd::load_relationships();
        $this->subclasses    = health_dd::load_subclass_info();
        $this->table_name    = health_dd::$table_name;
        $this->readable_name = health_dd::$readable_name;
        parent::__construct();
    }
}