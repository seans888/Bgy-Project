<?php
require_once 'barangay_clearance_dd.php';
class barangay_clearance_html extends html
{
    function __construct()
    {
        $this->fields        = barangay_clearance_dd::load_dictionary();
        $this->relations     = barangay_clearance_dd::load_relationships();
        $this->subclasses    = barangay_clearance_dd::load_subclass_info();
        $this->table_name    = barangay_clearance_dd::$table_name;
        $this->readable_name = barangay_clearance_dd::$readable_name;
    }
}
