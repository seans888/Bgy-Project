<?php
require_once 'sst_class.php';
require_once 'city_dd.php';
class city_sst extends sst
{
    function __construct()
    {
        $this->fields        = city_dd::load_dictionary();
        $this->relations     = city_dd::load_relationships();
        $this->subclasses    = city_dd::load_subclass_info();
        $this->table_name    = city_dd::$table_name;
        $this->readable_name = city_dd::$readable_name;
        parent::__construct();
    }
}
