<?php
require_once 'documentation_class.php';
require_once 'requirement_dd.php';
class requirement_doc extends documentation
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
