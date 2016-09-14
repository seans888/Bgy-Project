<?php
require_once 'sst_class.php';
require_once 'school_dd.php';
class school_sst extends sst
{
    function __construct()
    {
        $this->fields        = school_dd::load_dictionary();
        $this->relations     = school_dd::load_relationships();
        $this->subclasses    = school_dd::load_subclass_info();
        $this->table_name    = school_dd::$table_name;
        $this->readable_name = school_dd::$readable_name;
        parent::__construct();
    }
}
