<?php
require_once 'fee_dd.php';
class fee_html extends html
{
    function __construct()
    {
        $this->fields        = fee_dd::load_dictionary();
        $this->relations     = fee_dd::load_relationships();
        $this->subclasses    = fee_dd::load_subclass_info();
        $this->table_name    = fee_dd::$table_name;
        $this->readable_name = fee_dd::$readable_name;
    }
}
