<?php
require_once 'sst_class.php';
require_once 'request_dd.php';
class request_sst extends sst
{
    function __construct()
    {
        $this->fields        = request_dd::load_dictionary();
        $this->relations     = request_dd::load_relationships();
        $this->subclasses    = request_dd::load_subclass_info();
        $this->table_name    = request_dd::$table_name;
        $this->readable_name = request_dd::$readable_name;
        parent::__construct();
    }
}
