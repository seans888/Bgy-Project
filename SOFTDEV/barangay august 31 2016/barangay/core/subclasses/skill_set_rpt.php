<?php
require_once 'skill_set_dd.php';
class skill_set_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'SKILL_SET_REPORT_CUSTOM';
    var $report_title = 'Skill Set: Custom Reporting Tool';
    var $html_subclass = 'skill_set_html';
    var $data_subclass = 'skill_set';
    var $result_page = 'reporter_result_skill_set.php';
    var $cancel_page = 'listview_skill_set.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_skill_set.php';

    function __construct()
    {
        $this->fields        = skill_set_dd::load_dictionary();
        $this->relations     = skill_set_dd::load_relationships();
        $this->subclasses    = skill_set_dd::load_subclass_info();
        $this->table_name    = skill_set_dd::$table_name;
        $this->tables        = skill_set_dd::$table_name;
        $this->readable_name = skill_set_dd::$readable_name;
        $this->get_report_fields();
    }
}
