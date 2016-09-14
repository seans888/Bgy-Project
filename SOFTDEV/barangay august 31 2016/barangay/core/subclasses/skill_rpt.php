<?php
require_once 'skill_dd.php';
class skill_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'SKILL_REPORT_CUSTOM';
    var $report_title = 'Skill: Custom Reporting Tool';
    var $html_subclass = 'skill_html';
    var $data_subclass = 'skill';
    var $result_page = 'reporter_result_skill.php';
    var $cancel_page = 'listview_skill.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_skill.php';

    function __construct()
    {
        $this->fields        = skill_dd::load_dictionary();
        $this->relations     = skill_dd::load_relationships();
        $this->subclasses    = skill_dd::load_subclass_info();
        $this->table_name    = skill_dd::$table_name;
        $this->tables        = skill_dd::$table_name;
        $this->readable_name = skill_dd::$readable_name;
        $this->get_report_fields();
    }
}
