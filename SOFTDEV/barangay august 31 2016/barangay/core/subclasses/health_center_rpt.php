<?php
require_once 'health_center_dd.php';
class health_center_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'HEALTH_CENTER_REPORT_CUSTOM';
    var $report_title = 'Health Center: Custom Reporting Tool';
    var $html_subclass = 'health_center_html';
    var $data_subclass = 'health_center';
    var $result_page = 'reporter_result_health_center.php';
    var $cancel_page = 'listview_health_center.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_health_center.php';

    function __construct()
    {
        $this->fields        = health_center_dd::load_dictionary();
        $this->relations     = health_center_dd::load_relationships();
        $this->subclasses    = health_center_dd::load_subclass_info();
        $this->table_name    = health_center_dd::$table_name;
        $this->tables        = health_center_dd::$table_name;
        $this->readable_name = health_center_dd::$readable_name;
        $this->get_report_fields();
    }
}
