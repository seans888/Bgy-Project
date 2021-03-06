<?php
require_once 'sst_class.php';
require_once 'item_dd.php';
class item_sst extends sst
{
    function __construct()
    {
        $this->fields        = item_dd::load_dictionary();
        $this->relations     = item_dd::load_relationships();
        $this->subclasses    = item_dd::load_subclass_info();
        $this->table_name    = item_dd::$table_name;
        $this->readable_name = item_dd::$readable_name;
        parent::__construct();
    }
}
