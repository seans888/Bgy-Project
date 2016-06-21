<?php
require_once 'sst_class.php';
require_once 'poa&poi_dd.php';
class poa&poi_sst extends sst
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
