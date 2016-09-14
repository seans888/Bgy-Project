<?php
require_once 'lending_items_dd.php';
class lending_items_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'LENDING_ITEMS_REPORT_CUSTOM';
    var $report_title = 'Lending Items: Custom Reporting Tool';
    var $html_subclass = 'lending_items_html';
    var $data_subclass = 'lending_items';
    var $result_page = 'reporter_result_lending_items.php';
    var $cancel_page = 'listview_lending_items.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_lending_items.php';

    function __construct()
    {
        $this->fields        = lending_items_dd::load_dictionary();
        $this->relations     = lending_items_dd::load_relationships();
        $this->subclasses    = lending_items_dd::load_subclass_info();
        $this->table_name    = lending_items_dd::$table_name;
        $this->tables        = lending_items_dd::$table_name;
        $this->readable_name = lending_items_dd::$readable_name;
        $this->get_report_fields();
    }
}
