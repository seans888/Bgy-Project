<?php
require_once 'cedula_dd.php';
class cedula_html extends html
{
    function __construct()
    {
        $this->fields        = cedula_dd::load_dictionary();
        $this->relations     = cedula_dd::load_relationships();
        $this->subclasses    = cedula_dd::load_subclass_info();
        $this->table_name    = cedula_dd::$table_name;
        $this->readable_name = cedula_dd::$readable_name;
    }
	function template($type)
	{
		$this->draw_container_div_start();
		$header = strtoupper($type);
		$this->draw_fieldset_header($header);
		$this->draw_fieldset_body_start();
		$this->draw_table_tags = FALSE;
		
	//echo '<td>Civil Status:</td>';
	//echo '<td>';
	//$this->draw_field('civil_status');
	//echo '</td>';
		
		$this->draw_fieldset_body_end();
		$this->draw_container_div_end();
	}
	
}
