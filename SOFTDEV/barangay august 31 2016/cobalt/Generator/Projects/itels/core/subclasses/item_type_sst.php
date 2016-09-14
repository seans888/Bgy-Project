<?php
require_once 'sst_class.php';
require_once 'item_type_dd.php';
class item_type_sst extends sst
{
    function __construct()
    {
        $this->fields        = item_type_dd::load_dictionary();
        $this->relations     = item_type_dd::load_relationships();
        $this->subclasses    = item_type_dd::load_subclass_info();
        $this->table_name    = item_type_dd::$table_name;
        $this->readable_name = item_type_dd::$readable_name;
        parent::__construct();
    }
}
