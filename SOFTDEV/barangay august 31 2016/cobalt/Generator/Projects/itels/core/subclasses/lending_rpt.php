<?php
require_once 'lending_dd.php';
class lending_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'LENDING_REPORT_CUSTOM';
    var $report_title = 'Lending: Custom Reporting Tool';
    var $html_subclass = 'lending_html';
    var $data_subclass = 'lending';
    var $result_page = 'reporter_result_lending.php';
    var $cancel_page = 'listview_lending.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_lending.php';

    function __construct()
    {
        $this->fields        = lending_dd::load_dictionary();
        $this->relations     = lending_dd::load_relationships();
        $this->subclasses    = lending_dd::load_subclass_info();
        $this->table_name    = lending_dd::$table_name;
        $this->tables        = lending_dd::$table_name;
        $this->readable_name = lending_dd::$readable_name;
        $this->get_report_fields();
    }
}
