<?php
require_once 'item_type_dd.php';
class item_type_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ITEM_TYPE_REPORT_CUSTOM';
    var $report_title = 'Item Type: Custom Reporting Tool';
    var $html_subclass = 'item_type_html';
    var $data_subclass = 'item_type';
    var $result_page = 'reporter_result_item_type.php';
    var $cancel_page = 'listview_item_type.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_item_type.php';

    function __construct()
    {
        $this->fields        = item_type_dd::load_dictionary();
        $this->relations     = item_type_dd::load_relationships();
        $this->subclasses    = item_type_dd::load_subclass_info();
        $this->table_name    = item_type_dd::$table_name;
        $this->tables        = item_type_dd::$table_name;
        $this->readable_name = item_type_dd::$readable_name;
        $this->get_report_fields();
    }
}
