<?php
require_once 'lending_items_dd.php';
class lending_items_html extends html
{
    function __construct()
    {
        $this->fields        = lending_items_dd::load_dictionary();
        $this->relations     = lending_items_dd::load_relationships();
        $this->subclasses    = lending_items_dd::load_subclass_info();
        $this->table_name    = lending_items_dd::$table_name;
        $this->readable_name = lending_items_dd::$readable_name;
    }
}