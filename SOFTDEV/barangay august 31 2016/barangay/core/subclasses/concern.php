<?php
require_once 'concern_dd.php';
class concern extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = concern_dd::load_dictionary();
        $this->relations  = concern_dd::load_relationships();
        $this->subclasses = concern_dd::load_subclass_info();
        $this->table_name = concern_dd::$table_name;
        $this->tables     = concern_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('concern_id, type_of_case, respondent_name, compliant_name, scenario, date_filed');
            $this->set_values("?,?,?,?,?,?");

            $bind_params = array('isssss',
                                 &$this->fields['concern_id']['value'],
                                 &$this->fields['type_of_case']['value'],
                                 &$this->fields['respondent_name']['value'],
                                 &$this->fields['compliant_name']['value'],
                                 &$this->fields['scenario']['value'],
                                 &$this->fields['date_filed']['value']);

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
            $this->set_update("type_of_case = ?, respondent_name = ?, compliant_name = ?, scenario = ?, date_filed = ?");
            $this->set_where("concern_id = ?");

            $bind_params = array('sssssi',
                                 &$this->fields['type_of_case']['value'],
                                 &$this->fields['respondent_name']['value'],
                                 &$this->fields['compliant_name']['value'],
                                 &$this->fields['scenario']['value'],
                                 &$this->fields['date_filed']['value'],
                                 &$this->fields['concern_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("concern_id = ?");

        $bind_params = array('i',
                             &$this->fields['concern_id']['value']);

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
        $this->set_where("concern_id = ?");

        $bind_params = array('i',
                             &$this->fields['concern_id']['value']);

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
        $this->set_where("concern_id = ? AND (concern_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['concern_id']['value'],
                             &$this->fields['concern_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
