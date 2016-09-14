<?php
require_once 'sub_doc_dd.php';
class sub_doc extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = sub_doc_dd::load_dictionary();
        $this->relations  = sub_doc_dd::load_relationships();
        $this->subclasses = sub_doc_dd::load_subclass_info();
        $this->table_name = sub_doc_dd::$table_name;
        $this->tables     = sub_doc_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('request_id, sub_doc_id, document_id, requirement_id, requirement_doc, status');
            $this->set_values("?,?,?,?,?,?");

            $bind_params = array('iiiiss',
                                 &$this->fields['request_id']['value'],
                                 &$this->fields['sub_doc_id']['value'],
                                 &$this->fields['document_id']['value'],
                                 &$this->fields['requirement_id']['value'],
                                 &$this->fields['requirement_doc']['value'],
                                 &$this->fields['status']['value']);

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
            $this->set_update("request_id = ?, sub_doc_id = ?, document_id = ?, requirement_id = ?, requirement_doc = ?, status = ?");
            $this->set_where("sub_doc_id = ?");

            $bind_params = array('iiiissi',
                                 &$this->fields['request_id']['value'],
                                 &$this->fields['sub_doc_id']['value'],
                                 &$this->fields['document_id']['value'],
                                 &$this->fields['requirement_id']['value'],
                                 &$this->fields['requirement_doc']['value'],
                                 &$this->fields['status']['value'],
                                 $param['orig_sub_doc_id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("sub_doc_id = ?");

        $bind_params = array('i',
                             &$this->fields['sub_doc_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("request_id = ? AND sub_doc_id = ?");

        $bind_params = array('ii',
                             &$this->fields['request_id']['value'],
                             &$this->fields['sub_doc_id']['value']);

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
        $this->set_where("sub_doc_id = ?");

        $bind_params = array('i',
                             &$this->fields['sub_doc_id']['value']);

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
        //Next two lines just to get the orig_ pkey(s) from $param
        $this->escape_arguments($param);
        extract($param);

        $this->set_query_type('SELECT');
        $this->set_where("sub_doc_id = ? AND (sub_doc_id != '$orig_sub_doc_id')");

        $bind_params = array('i',
                             &$this->fields['sub_doc_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
