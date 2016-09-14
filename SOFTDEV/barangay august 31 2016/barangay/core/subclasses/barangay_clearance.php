<?php
require_once 'barangay_clearance_dd.php';
class barangay_clearance extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = barangay_clearance_dd::load_dictionary();
        $this->relations  = barangay_clearance_dd::load_relationships();
        $this->subclasses = barangay_clearance_dd::load_subclass_info();
        $this->table_name = barangay_clearance_dd::$table_name;
        $this->tables     = barangay_clearance_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('barangay_clearance_id, citizen_id, purpose');
            $this->set_values("?,?,?");

            $bind_params = array('iis',
                                 &$this->fields['barangay_clearance_id']['value'],
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['purpose']['value']);

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
            $this->set_update("citizen_id = ?, purpose = ?");
            $this->set_where("barangay_clearance_id = ?");

            $bind_params = array('isi',
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['purpose']['value'],
                                 &$this->fields['barangay_clearance_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("barangay_clearance_id = ?");

        $bind_params = array('i',
                             &$this->fields['barangay_clearance_id']['value']);

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
        $this->set_where("barangay_clearance_id = ?");

        $bind_params = array('i',
                             &$this->fields['barangay_clearance_id']['value']);

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
        $this->set_where("barangay_clearance_id = ? AND (barangay_clearance_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['barangay_clearance_id']['value'],
                             &$this->fields['barangay_clearance_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
