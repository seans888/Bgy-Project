<?php
require_once 'barangay_clearance_dd.php';
class barangay_clearance_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'BARANGAY_CLEARANCE_REPORT_CUSTOM';
    var $report_title = 'Barangay Clearance: Custom Reporting Tool';
    var $html_subclass = 'barangay_clearance_html';
    var $data_subclass = 'barangay_clearance';
    var $result_page = 'reporter_result_barangay_clearance.php';
    var $cancel_page = 'listview_barangay_clearance.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_barangay_clearance.php';

    function __construct()
    {
        $this->fields        = barangay_clearance_dd::load_dictionary();
        $this->relations     = barangay_clearance_dd::load_relationships();
        $this->subclasses    = barangay_clearance_dd::load_subclass_info();
        $this->table_name    = barangay_clearance_dd::$table_name;
        $this->tables        = barangay_clearance_dd::$table_name;
        $this->readable_name = barangay_clearance_dd::$readable_name;
        $this->get_report_fields();
    }
}
