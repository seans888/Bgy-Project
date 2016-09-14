<?php
require_once 'health_dd.php';
class health_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'HEALTH_REPORT_CUSTOM';
    var $report_title = 'Health: Custom Reporting Tool';
    var $html_subclass = 'health_html';
    var $data_subclass = 'health';
    var $result_page = 'reporter_result_health.php';
    var $cancel_page = 'listview_health.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_health.php';

    function __construct()
    {
        $this->fields        = health_dd::load_dictionary();
        $this->relations     = health_dd::load_relationships();
        $this->subclasses    = health_dd::load_subclass_info();
        $this->table_name    = health_dd::$table_name;
        $this->tables        = health_dd::$table_name;
        $this->readable_name = health_dd::$readable_name;
        $this->get_report_fields();
    }
}
