<?php
require_once 'fee_dd.php';
class fee_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'FEE_REPORT_CUSTOM';
    var $report_title = 'Fee: Custom Reporting Tool';
    var $html_subclass = 'fee_html';
    var $data_subclass = 'fee';
    var $result_page = 'reporter_result_fee.php';
    var $cancel_page = 'listview_fee.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_fee.php';

    function __construct()
    {
        $this->fields        = fee_dd::load_dictionary();
        $this->relations     = fee_dd::load_relationships();
        $this->subclasses    = fee_dd::load_subclass_info();
        $this->table_name    = fee_dd::$table_name;
        $this->tables        = fee_dd::$table_name;
        $this->readable_name = fee_dd::$readable_name;
        $this->get_report_fields();
    }
}
