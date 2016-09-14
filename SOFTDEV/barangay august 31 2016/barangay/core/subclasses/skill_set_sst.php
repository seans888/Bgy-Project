<?php
require_once 'sst_class.php';
require_once 'skill_set_dd.php';
class skill_set_sst extends sst
{
    function __construct()
    {
        $this->fields        = skill_set_dd::load_dictionary();
        $this->relations     = skill_set_dd::load_relationships();
        $this->subclasses    = skill_set_dd::load_subclass_info();
        $this->table_name    = skill_set_dd::$table_name;
        $this->readable_name = skill_set_dd::$readable_name;
        parent::__construct();
    }
}
