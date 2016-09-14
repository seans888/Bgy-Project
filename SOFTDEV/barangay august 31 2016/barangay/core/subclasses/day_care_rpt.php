<?php
require_once 'day_care_dd.php';
class day_care_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'DAY_CARE_REPORT_CUSTOM';
    var $report_title = 'Day Care: Custom Reporting Tool';
    var $html_subclass = 'day_care_html';
    var $data_subclass = 'day_care';
    var $result_page = 'reporter_result_day_care.php';
    var $cancel_page = 'listview_day_care.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_day_care.php';

    function __construct()
    {
        $this->fields        = day_care_dd::load_dictionary();
        $this->relations     = day_care_dd::load_relationships();
        $this->subclasses    = day_care_dd::load_subclass_info();
        $this->table_name    = day_care_dd::$table_name;
        $this->tables        = day_care_dd::$table_name;
        $this->readable_name = day_care_dd::$readable_name;
        $this->get_report_fields();
    }
}
