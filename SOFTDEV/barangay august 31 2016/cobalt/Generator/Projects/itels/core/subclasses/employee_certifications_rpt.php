<?php
require_once 'employee_certifications_dd.php';
class employee_certifications_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'EMPLOYEE_CERTIFICATIONS_REPORT_CUSTOM';
    var $report_title = 'Employee Certifications: Custom Reporting Tool';
    var $html_subclass = 'employee_certifications_html';
    var $data_subclass = 'employee_certifications';
    var $result_page = 'reporter_result_employee_certifications.php';
    var $cancel_page = 'listview_employee_certifications.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_employee_certifications.php';

    function __construct()
    {
        $this->fields        = employee_certifications_dd::load_dictionary();
        $this->relations     = employee_certifications_dd::load_relationships();
        $this->subclasses    = employee_certifications_dd::load_subclass_info();
        $this->table_name    = employee_certifications_dd::$table_name;
        $this->tables        = employee_certifications_dd::$table_name;
        $this->readable_name = employee_certifications_dd::$readable_name;
        $this->get_report_fields();
    }
}
