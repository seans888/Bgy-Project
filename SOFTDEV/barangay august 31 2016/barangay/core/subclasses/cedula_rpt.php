<?php
require_once 'cedula_dd.php';
class cedula_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'CEDULA_REPORT_CUSTOM';
    var $report_title = 'Cedula: Custom Reporting Tool';
    var $html_subclass = 'cedula_html';
    var $data_subclass = 'cedula';
    var $result_page = 'reporter_result_cedula.php';
    var $cancel_page = 'listview_cedula.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_cedula.php';

    function __construct()
    {
        $this->fields        = cedula_dd::load_dictionary();
        $this->relations     = cedula_dd::load_relationships();
        $this->subclasses    = cedula_dd::load_subclass_info();
        $this->table_name    = cedula_dd::$table_name;
        $this->tables        = cedula_dd::$table_name;
        $this->readable_name = cedula_dd::$readable_name;
        $this->get_report_fields();
    }
}
