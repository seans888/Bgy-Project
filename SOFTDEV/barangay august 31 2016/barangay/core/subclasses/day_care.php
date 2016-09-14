<?php
require_once 'day_care_dd.php';
class day_care extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = day_care_dd::load_dictionary();
        $this->relations  = day_care_dd::load_relationships();
        $this->subclasses = day_care_dd::load_subclass_info();
        $this->table_name = day_care_dd::$table_name;
        $this->tables     = day_care_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('day_care_id, guardian_name, child_name, time_in, time_out');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issss',
                                 &$this->fields['day_care_id']['value'],
                                 &$this->fields['guardian_name']['value'],
                                 &$this->fields['child_name']['value'],
                                 &$this->fields['time_in']['value'],
                                 &$this->fields['time_out']['value']);

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
            $this->set_update("guardian_name = ?, child_name = ?, time_in = ?, time_out = ?");
            $this->set_where("day_care_id = ?");

            $bind_params = array('ssssi',
                                 &$this->fields['guardian_name']['value'],
                                 &$this->fields['child_name']['value'],
                                 &$this->fields['time_in']['value'],
                                 &$this->fields['time_out']['value'],
                                 &$this->fields['day_care_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("day_care_id = ?");

        $bind_params = array('i',
                             &$this->fields['day_care_id']['value']);

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
        $this->set_where("day_care_id = ?");

        $bind_params = array('i',
                             &$this->fields['day_care_id']['value']);

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
        $this->set_where("day_care_id = ? AND (day_care_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['day_care_id']['value'],
                             &$this->fields['day_care_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
