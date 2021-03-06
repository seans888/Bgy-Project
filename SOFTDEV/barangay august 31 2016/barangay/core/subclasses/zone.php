<?php
require_once 'zone_dd.php';
class zone extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = zone_dd::load_dictionary();
        $this->relations  = zone_dd::load_relationships();
        $this->subclasses = zone_dd::load_subclass_info();
        $this->table_name = zone_dd::$table_name;
        $this->tables     = zone_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('zone_id, zone_name, zone_leader_name, barangay_id, city_id');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issii',
                                 &$this->fields['zone_id']['value'],
                                 &$this->fields['zone_name']['value'],
                                 &$this->fields['zone_leader_name']['value'],
                                 &$this->fields['barangay_id']['value'],
                                 &$this->fields['city_id']['value']);

            $this->stmt_prepare($bind_params);
        }

        $this->stmt_execute();
        return $this;
    }

    function edit($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('UPDATE');
            $this->set_update("zone_name = ?, zone_leader_name = ?, barangay_id = ?, city_id = ?");
            $this->set_where("zone_id = ?");

            $bind_params = array('ssiii',
                                 &$this->fields['zone_name']['value'],
                                 &$this->fields['zone_leader_name']['value'],
                                 &$this->fields['barangay_id']['value'],
                                 &$this->fields['city_id']['value'],
                                 &$this->fields['zone_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("zone_id = ?");

        $bind_params = array('i',
                             &$this->fields['zone_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("");

        $bind_params = array('',
                             );

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function select()
    {
        $this->set_query_type('SELECT');
        $this->exec_fetch('array');
        return $this;
    }

    function check_uniqueness($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('SELECT');
        $this->set_where("zone_id = ?");

        $bind_params = array('i',
                             &$this->fields['zone_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }

    function check_uniqueness_for_editing($param)
    {
        $this->set_parameters($param);


        $this->set_query_type('SELECT');
        $this->set_where("zone_id = ? AND (zone_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['zone_id']['value'],
                             &$this->fields['zone_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
