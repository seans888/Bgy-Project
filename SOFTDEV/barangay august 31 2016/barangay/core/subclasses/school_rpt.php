<?php
require_once 'school_dd.php';
class school_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'SCHOOL_REPORT_CUSTOM';
    var $report_title = 'School: Custom Reporting Tool';
    var $html_subclass = 'school_html';
    var $data_subclass = 'school';
    var $result_page = 'reporter_result_school.php';
    var $cancel_page = 'listview_school.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_school.php';

    function __construct()
    {
        $this->fields        = school_dd::load_dictionary();
        $this->relations     = school_dd::load_relationships();
        $this->subclasses    = school_dd::load_subclass_info();
        $this->table_name    = school_dd::$table_name;
        $this->tables        = school_dd::$table_name;
        $this->readable_name = school_dd::$readable_name;
        $this->get_report_fields();
    }
}
