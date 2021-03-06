<?php
require_once 'poapoi_dd.php';
class poapoi_html extends html
{
    function __construct()
    {
        $this->fields        = poapoi_dd::load_dictionary();
        $this->relations     = poapoi_dd::load_relationships();
        $this->subclasses    = poapoi_dd::load_subclass_info();
        $this->table_name    = poapoi_dd::$table_name;
        $this->readable_name = poapoi_dd::$readable_name;
    }
}
