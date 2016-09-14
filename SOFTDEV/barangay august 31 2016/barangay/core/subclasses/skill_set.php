<?php
require_once 'skill_set_dd.php';
class skill_set extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = skill_set_dd::load_dictionary();
        $this->relations  = skill_set_dd::load_relationships();
        $this->subclasses = skill_set_dd::load_subclass_info();
        $this->table_name = skill_set_dd::$table_name;
        $this->tables     = skill_set_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('skill_set_id, skill_category');
            $this->set_values("?,?");

            $bind_params = array('is',
                                 &$this->fields['skill_set_id']['value'],
                                 &$this->fields['skill_category']['value']);

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
            $this->set_update("skill_category = ?");
            $this->set_where("skill_set_id = ?");

            $bind_params = array('si',
                                 &$this->fields['skill_category']['value'],
                                 &$this->fields['skill_set_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("skill_set_id = ?");

        $bind_params = array('i',
                             &$this->fields['skill_set_id']['value']);

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
        $this->set_where("skill_set_id = ?");

        $bind_params = array('i',
                             &$this->fields['skill_set_id']['value']);

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
        $this->set_where("skill_set_id = ? AND (skill_set_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['skill_set_id']['value'],
                             &$this->fields['skill_set_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}