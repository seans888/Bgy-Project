<?php
require_once 'cedula_dd.php';
class cedula extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = cedula_dd::load_dictionary();
        $this->relations  = cedula_dd::load_relationships();
        $this->subclasses = cedula_dd::load_subclass_info();
        $this->table_name = cedula_dd::$table_name;
        $this->tables     = cedula_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('cedula_id, citizen_id, business, income, real_property, total');
            $this->set_values("?,?,?,?,?,?");

            $bind_params = array('iissss',
                                 &$this->fields['cedula_id']['value'],
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['business']['value'],
                                 &$this->fields['income']['value'],
                                 &$this->fields['real_property']['value'],
                                 &$this->fields['total']['value']);

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
            $this->set_update("citizen_id = ?, business = ?, income = ?, real_property = ?, total = ?");
            $this->set_where("cedula_id = ?");

            $bind_params = array('issssi',
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['business']['value'],
                                 &$this->fields['income']['value'],
                                 &$this->fields['real_property']['value'],
                                 &$this->fields['total']['value'],
                                 &$this->fields['cedula_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("cedula_id = ?");

        $bind_params = array('i',
                             &$this->fields['cedula_id']['value']);

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
        $this->set_where("cedula_id = ?");

        $bind_params = array('i',
                             &$this->fields['cedula_id']['value']);

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
        $this->set_where("cedula_id = ? AND (cedula_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['cedula_id']['value'],
                             &$this->fields['cedula_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
