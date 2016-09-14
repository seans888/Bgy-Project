<?php
require_once 'fee_dd.php';
class fee extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = fee_dd::load_dictionary();
        $this->relations  = fee_dd::load_relationships();
        $this->subclasses = fee_dd::load_subclass_info();
        $this->table_name = fee_dd::$table_name;
        $this->tables     = fee_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('fee_id, document_id, fee');
            $this->set_values("?,?,?");

            $bind_params = array('iis',
                                 &$this->fields['fee_id']['value'],
                                 &$this->fields['document_id']['value'],
                                 &$this->fields['fee']['value']);

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
            $this->set_update("document_id = ?, fee = ?");
            $this->set_where("fee_id = ?");

            $bind_params = array('isi',
                                 &$this->fields['document_id']['value'],
                                 &$this->fields['fee']['value'],
                                 &$this->fields['fee_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("fee_id = ?");

        $bind_params = array('i',
                             &$this->fields['fee_id']['value']);

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
        $this->set_where("fee_id = ?");

        $bind_params = array('i',
                             &$this->fields['fee_id']['value']);

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
        $this->set_where("fee_id = ? AND (fee_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['fee_id']['value'],
                             &$this->fields['fee_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
