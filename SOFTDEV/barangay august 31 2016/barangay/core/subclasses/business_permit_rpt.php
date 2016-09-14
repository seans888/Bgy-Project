<?php
require_once 'business_permit_dd.php';
class business_permit_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'BUSINESS_PERMIT_REPORT_CUSTOM';
    var $report_title = 'Business Permit: Custom Reporting Tool';
    var $html_subclass = 'business_permit_html';
    var $data_subclass = 'business_permit';
    var $result_page = 'reporter_result_business_permit.php';
    var $cancel_page = 'listview_business_permit.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_business_permit.php';

    function __construct()
    {
        $this->fields        = business_permit_dd::load_dictionary();
        $this->relations     = business_permit_dd::load_relationships();
        $this->subclasses    = business_permit_dd::load_subclass_info();
        $this->table_name    = business_permit_dd::$table_name;
        $this->tables        = business_permit_dd::$table_name;
        $this->readable_name = business_permit_dd::$readable_name;
        $this->get_report_fields();
    }
}
