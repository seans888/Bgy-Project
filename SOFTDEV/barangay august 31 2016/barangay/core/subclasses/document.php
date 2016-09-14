<?php
require_once 'document_dd.php';
class document extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = document_dd::load_dictionary();
        $this->relations  = document_dd::load_relationships();
        $this->subclasses = document_dd::load_subclass_info();
        $this->table_name = document_dd::$table_name;
        $this->tables     = document_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('document_id, document_name, document_description, date_offered, is_offered');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issss',
                                 &$this->fields['document_id']['value'],
                                 &$this->fields['document_name']['value'],
                                 &$this->fields['document_description']['value'],
                                 &$this->fields['date_offered']['value'],
                                 &$this->fields['is_offered']['value']);

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
            $this->set_update("document_name = ?, document_description = ?, date_offered = ?, is_offered = ?");
            $this->set_where("document_id = ?");

            $bind_params = array('ssssi',
                                 &$this->fields['document_name']['value'],
                                 &$this->fields['document_description']['value'],
                                 &$this->fields['date_offered']['value'],
                                 &$this->fields['is_offered']['value'],
                                 &$this->fields['document_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("document_id = ?");

        $bind_params = array('i',
                             &$this->fields['document_id']['value']);

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
        $this->set_where("document_id = ?");

        $bind_params = array('i',
                             &$this->fields['document_id']['value']);

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
        $this->set_where("document_id = ? AND (document_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['document_id']['value'],
                             &$this->fields['document_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}