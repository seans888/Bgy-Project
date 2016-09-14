<?php
require_once 'concern_dd.php';
class concern_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'CONCERN_REPORT_CUSTOM';
    var $report_title = 'Concern: Custom Reporting Tool';
    var $html_subclass = 'concern_html';
    var $data_subclass = 'concern';
    var $result_page = 'reporter_result_concern.php';
    var $cancel_page = 'listview_concern.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_concern.php';

    function __construct()
    {
        $this->fields        = concern_dd::load_dictionary();
        $this->relations     = concern_dd::load_relationships();
        $this->subclasses    = concern_dd::load_subclass_info();
        $this->table_name    = concern_dd::$table_name;
        $this->tables        = concern_dd::$table_name;
        $this->readable_name = concern_dd::$readable_name;
        $this->get_report_fields();
    }
}
