<?php
require_once 'poapoi_dd.php';
class poapoi_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'POAPOI_REPORT_CUSTOM';
    var $report_title = 'Poapoi: Custom Reporting Tool';
    var $html_subclass = 'poapoi_html';
    var $data_subclass = 'poapoi';
    var $result_page = 'reporter_result_poapoi.php';
    var $cancel_page = 'listview_poapoi.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_poapoi.php';

    function __construct()
    {
        $this->fields        = poapoi_dd::load_dictionary();
        $this->relations     = poapoi_dd::load_relationships();
        $this->subclasses    = poapoi_dd::load_subclass_info();
        $this->table_name    = poapoi_dd::$table_name;
        $this->tables        = poapoi_dd::$table_name;
        $this->readable_name = poapoi_dd::$readable_name;
        $this->get_report_fields();
    }
}
