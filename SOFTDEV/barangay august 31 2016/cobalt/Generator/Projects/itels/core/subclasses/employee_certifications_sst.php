<?php
require_once 'sst_class.php';
require_once 'employee_certifications_dd.php';
class employee_certifications_sst extends sst
{
    function __construct()
    {
        $this->fields        = employee_certifications_dd::load_dictionary();
        $this->relations     = employee_certifications_dd::load_relationships();
        $this->subclasses    = employee_certifications_dd::load_subclass_info();
        $this->table_name    = employee_certifications_dd::$table_name;
        $this->readable_name = employee_certifications_dd::$readable_name;
        parent::__construct();
    }
}
