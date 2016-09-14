<?php
require_once 'business_permit_fee_dd.php';
class business_permit_fee_html extends html
{
    function __construct()
    {
        $this->fields        = business_permit_fee_dd::load_dictionary();
        $this->relations     = business_permit_fee_dd::load_relationships();
        $this->subclasses    = business_permit_fee_dd::load_subclass_info();
        $this->table_name    = business_permit_fee_dd::$table_name;
        $this->readable_name = business_permit_fee_dd::$readable_name;
    }
}
