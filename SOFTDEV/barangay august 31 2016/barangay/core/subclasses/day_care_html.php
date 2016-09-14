<?php
require_once 'day_care_dd.php';
class day_care_html extends html
{
    function __construct()
    {
        $this->fields        = day_care_dd::load_dictionary();
        $this->relations     = day_care_dd::load_relationships();
        $this->subclasses    = day_care_dd::load_subclass_info();
        $this->table_name    = day_care_dd::$table_name;
        $this->readable_name = day_care_dd::$readable_name;
    }
}
