<?php
require_once 'sst_class.php';
require_once 'cedula_dd.php';
class cedula_sst extends sst
{
    function __construct()
    {
        $this->fields        = cedula_dd::load_dictionary();
        $this->relations     = cedula_dd::load_relationships();
        $this->subclasses    = cedula_dd::load_subclass_info();
        $this->table_name    = cedula_dd::$table_name;
        $this->readable_name = cedula_dd::$readable_name;
        parent::__construct();
    }
}
