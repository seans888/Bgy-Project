<?php
require_once 'health_center_dd.php';
class health_center extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = health_center_dd::load_dictionary();
        $this->relations  = health_center_dd::load_relationships();
        $this->subclasses = health_center_dd::load_subclass_info();
        $this->table_name = health_center_dd::$table_name;
        $this->tables     = health_center_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('heath_center_id, health_center_name, health_center_code, address, city');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('isssi',
                                 &$this->fields['heath_center_id']['value'],
                                 &$this->fields['health_center_name']['value'],
                                 &$this->fields['health_center_code']['value'],
                                 &$this->fields['address']['value'],
                                 &$this->fields['city']['value']);

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
            $this->set_update("health_center_name = ?, health_center_code = ?, address = ?, city = ?");
            $this->set_where("heath_center_id = ?");

            $bind_params = array('sssii',
                                 &$this->fields['health_center_name']['value'],
                                 &$this->fields['health_center_code']['value'],
                                 &$this->fields['address']['value'],
                                 &$this->fields['city']['value'],
                                 &$this->fields['heath_center_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("heath_center_id = ?");

        $bind_params = array('i',
                             &$this->fields['heath_center_id']['value']);

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
        $this->set_where("heath_center_id = ?");

        $bind_params = array('i',
                             &$this->fields['heath_center_id']['value']);

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
        $this->set_where("heath_center_id = ? AND (heath_center_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['heath_center_id']['value'],
                             &$this->fields['heath_center_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
