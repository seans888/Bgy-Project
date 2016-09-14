<?php
require_once 'nationality_dd.php';
class nationality_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'NATIONALITY_REPORT_CUSTOM';
    var $report_title = 'Nationality: Custom Reporting Tool';
    var $html_subclass = 'nationality_html';
    var $data_subclass = 'nationality';
    var $result_page = 'reporter_result_nationality.php';
    var $cancel_page = 'listview_nationality.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_nationality.php';

    function __construct()
    {
        $this->fields        = nationality_dd::load_dictionary();
        $this->relations     = nationality_dd::load_relationships();
        $this->subclasses    = nationality_dd::load_subclass_info();
        $this->table_name    = nationality_dd::$table_name;
        $this->tables        = nationality_dd::$table_name;
        $this->readable_name = nationality_dd::$readable_name;
        $this->get_report_fields();
    }
}
