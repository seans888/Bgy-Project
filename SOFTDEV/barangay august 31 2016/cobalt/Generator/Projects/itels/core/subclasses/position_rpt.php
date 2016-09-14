<?php
require_once 'position_dd.php';
class position_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'POSITION_REPORT_CUSTOM';
    var $report_title = 'Position: Custom Reporting Tool';
    var $html_subclass = 'position_html';
    var $data_subclass = 'position';
    var $result_page = 'reporter_result_position.php';
    var $cancel_page = 'listview_position.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_position.php';

    function __construct()
    {
        $this->fields        = position_dd::load_dictionary();
        $this->relations     = position_dd::load_relationships();
        $this->subclasses    = position_dd::load_subclass_info();
        $this->table_name    = position_dd::$table_name;
        $this->tables        = position_dd::$table_name;
        $this->readable_name = position_dd::$readable_name;
        $this->get_report_fields();
    }
}
