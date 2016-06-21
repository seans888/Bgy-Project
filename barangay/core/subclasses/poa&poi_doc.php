<?php
require_once 'documentation_class.php';
require_once 'poa&poi_dd.php';
class poa&poi_doc extends documentation
{
    function __construct()
    {
        $this->fields        = poa&poi_dd::load_dictionary();
        $this->relations     = poa&poi_dd::load_relationships();
        $this->subclasses    = poa&poi_dd::load_subclass_info();
        $this->table_name    = poa&poi_dd::$table_name;
        $this->readable_name = poa&poi_dd::$readable_name;
        parent::__construct();
    }
}
