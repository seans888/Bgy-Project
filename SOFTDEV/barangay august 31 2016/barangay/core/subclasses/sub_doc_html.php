<?php
require_once 'sub_doc_dd.php';
class sub_doc_html extends html
{
    function __construct()
    {
        $this->fields        = sub_doc_dd::load_dictionary();
        $this->relations     = sub_doc_dd::load_relationships();
        $this->subclasses    = sub_doc_dd::load_subclass_info();
        $this->table_name    = sub_doc_dd::$table_name;
        $this->readable_name = sub_doc_dd::$readable_name;
    }
}
