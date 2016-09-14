<?php
require_once 'business_permit_fee_dd.php';
class business_permit_fee_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'BUSINESS_PERMIT_FEE_REPORT_CUSTOM';
    var $report_title = 'Business Permit Fee: Custom Reporting Tool';
    var $html_subclass = 'business_permit_fee_html';
    var $data_subclass = 'business_permit_fee';
    var $result_page = 'reporter_result_business_permit_fee.php';
    var $cancel_page = 'listview_business_permit_fee.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_business_permit_fee.php';

    function __construct()
    {
        $this->fields        = business_permit_fee_dd::load_dictionary();
        $this->relations     = business_permit_fee_dd::load_relationships();
        $this->subclasses    = business_permit_fee_dd::load_subclass_info();
        $this->table_name    = business_permit_fee_dd::$table_name;
        $this->tables        = business_permit_fee_dd::$table_name;
        $this->readable_name = business_permit_fee_dd::$readable_name;
        $this->get_report_fields();
    }
}