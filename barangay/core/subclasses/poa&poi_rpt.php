<?php
require_once 'poa&poi_dd.php';
class poa&poi_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'POA&POI_REPORT_CUSTOM';
    var $report_title = 'Poa&poi: Custom Reporting Tool';
    var $html_subclass = 'poa&poi_html';
    var $data_subclass = 'poa&poi';
    var $result_page = 'reporter_result_poa&poi.php';
    var $cancel_page = 'listview_poa&poi.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_poa&poi.php';

    function __construct()
    {
        $this->fields        = poa&poi_dd::load_dictionary();
        $this->relations     = poa&poi_dd::load_relationships();
        $this->subclasses    = poa&poi_dd::load_subclass_info();
        $this->table_name    = poa&poi_dd::$table_name;
        $this->tables        = poa&poi_dd::$table_name;
        $this->readable_name = poa&poi_dd::$readable_name;
        $this->get_report_fields();
    }
}
