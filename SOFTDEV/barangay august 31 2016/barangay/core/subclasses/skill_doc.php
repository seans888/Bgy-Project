<?php
require_once 'documentation_class.php';
require_once 'skill_dd.php';
class skill_doc extends documentation
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
