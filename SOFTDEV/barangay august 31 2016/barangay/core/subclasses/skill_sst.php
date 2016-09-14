<?php
require_once 'sst_class.php';
require_once 'skill_dd.php';
class skill_sst extends sst
{
    function __construct()
    {
        $this->fields        = skill_dd::load_dictionary();
        $this->relations     = skill_dd::load_relationships();
        $this->subclasses    = skill_dd::load_subclass_info();
        $this->table_name    = skill_dd::$table_name;
        $this->readable_name = skill_dd::$readable_name;
        parent::__construct();
    }
}
