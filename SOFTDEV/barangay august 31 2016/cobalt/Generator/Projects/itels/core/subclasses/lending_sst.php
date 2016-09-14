<?php
require_once 'sst_class.php';
require_once 'lending_dd.php';
class lending_sst extends sst
{
    function __construct()
    {
        $this->fields        = lending_dd::load_dictionary();
        $this->relations     = lending_dd::load_relationships();
        $this->subclasses    = lending_dd::load_subclass_info();
        $this->table_name    = lending_dd::$table_name;
        $this->readable_name = lending_dd::$readable_name;
        parent::__construct();
    }
}