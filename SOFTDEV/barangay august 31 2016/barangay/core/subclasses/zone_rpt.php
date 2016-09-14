<?php
require_once 'zone_dd.php';
class zone_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ZONE_REPORT_CUSTOM';
    var $report_title = 'Zone: Custom Reporting Tool';
    var $html_subclass = 'zone_html';
    var $data_subclass = 'zone';
    var $result_page = 'reporter_result_zone.php';
    var $cancel_page = 'listview_zone.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_zone.php';

    function __construct()
    {
        $this->fields        = zone_dd::load_dictionary();
        $this->relations     = zone_dd::load_relationships();
        $this->subclasses    = zone_dd::load_subclass_info();
        $this->table_name    = zone_dd::$table_name;
        $this->tables        = zone_dd::$table_name;
        $this->readable_name = zone_dd::$readable_name;
        $this->get_report_fields();
    }
}
