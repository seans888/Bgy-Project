<?php
require_once 'sub_doc_dd.php';
class sub_doc_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'SUB_DOC_REPORT_CUSTOM';
    var $report_title = 'Sub Doc: Custom Reporting Tool';
    var $html_subclass = 'sub_doc_html';
    var $data_subclass = 'sub_doc';
    var $result_page = 'reporter_result_sub_doc.php';
    var $cancel_page = 'listview_sub_doc.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_sub_doc.php';

    function __construct()
    {
        $this->fields        = sub_doc_dd::load_dictionary();
        $this->relations     = sub_doc_dd::load_relationships();
        $this->subclasses    = sub_doc_dd::load_subclass_info();
        $this->table_name    = sub_doc_dd::$table_name;
        $this->tables        = sub_doc_dd::$table_name;
        $this->readable_name = sub_doc_dd::$readable_name;
        $this->get_report_fields();
    }
}
