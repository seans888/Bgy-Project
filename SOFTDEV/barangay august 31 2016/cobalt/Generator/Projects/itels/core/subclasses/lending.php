<?php
require_once 'lending_dd.php';
class lending extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = lending_dd::load_dictionary();
        $this->relations  = lending_dd::load_relationships();
        $this->subclasses = lending_dd::load_subclass_info();
        $this->table_name = lending_dd::$table_name;
        $this->tables     = lending_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('lending_id, lending_tag, employee_id, request_date, remarks, transaction_date');
            $this->set_values("?,?,?,?,?,?");

            $bind_params = array('isisss',
                                 &$this->fields['lending_id']['value'],
                                 &$this->fields['lending_tag']['value'],
                                 &$this->fields['employee_id']['value'],
                                 &$this->fields['request_date']['value'],
                                 &$this->fields['remarks']['value'],
                                 &$this->fields['transaction_date']['value']);

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
            $this->set_update("lending_tag = ?, employee_id = ?, request_date = ?, remarks = ?, transaction_date = ?");
            $this->set_where("lending_id = ?");

            $bind_params = array('sisssi',
                                 &$this->fields['lending_tag']['value'],
                                 &$this->fields['employee_id']['value'],
                                 &$this->fields['request_date']['value'],
                                 &$this->fields['remarks']['value'],
                                 &$this->fields['transaction_date']['value'],
                                 &$this->fields['lending_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("lending_id = ?");

        $bind_params = array('i',
                             &$this->fields['lending_id']['value']);

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
        $this->set_where("lending_id = ?");

        $bind_params = array('i',
                             &$this->fields['lending_id']['value']);

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
        $this->set_where("lending_id = ? AND (lending_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['lending_id']['value'],
                             &$this->fields['lending_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
