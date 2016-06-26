<?php
require_once 'sst_class.php';
require_once 'requirement_dd.php';
class requirement_sst extends sst
{
    function __construct()
    {
        $this->fields        = requirement_dd::load_dictionary();
        $this->relations     = requirement_dd::load_relationships();
        $this->subclasses    = requirement_dd::load_subclass_info();
        $this->table_name    = requirement_dd::$table_name;
        $this->readable_name = requirement_dd::$readable_name;
        parent::__construct();
    }
}