<?php
require_once 'item_dd.php';
class item_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ITEM_REPORT_CUSTOM';
    var $report_title = 'Item: Custom Reporting Tool';
    var $html_subclass = 'item_html';
    var $data_subclass = 'item';
    var $result_page = 'reporter_result_item.php';
    var $cancel_page = 'listview_item.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_item.php';

    function __construct()
    {
        $this->fields        = item_dd::load_dictionary();
        $this->relations     = item_dd::load_relationships();
        $this->subclasses    = item_dd::load_subclass_info();
        $this->table_name    = item_dd::$table_name;
        $this->tables        = item_dd::$table_name;
        $this->readable_name = item_dd::$readable_name;
        $this->get_report_fields();
    }
}
