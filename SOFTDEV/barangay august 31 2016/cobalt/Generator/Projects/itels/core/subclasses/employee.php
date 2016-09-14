<?php
require_once 'employee_dd.php';
class employee extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = employee_dd::load_dictionary();
        $this->relations  = employee_dd::load_relationships();
        $this->subclasses = employee_dd::load_subclass_info();
        $this->table_name = employee_dd::$table_name;
        $this->tables     = employee_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('employee_id, department_id, position_id, first_name, middle_name, last_name, address, contact_number, email_address, gender, civil_status, birthday, sss_number, tax_identification_number, philhealth_number, pagibig_number, hiring_date');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('iiissssssssssssss',
                                 &$this->fields['employee_id']['value'],
                                 &$this->fields['department_id']['value'],
                                 &$this->fields['position_id']['value'],
                                 &$this->fields['first_name']['value'],
                                 &$this->fields['middle_name']['value'],
                                 &$this->fields['last_name']['value'],
                                 &$this->fields['address']['value'],
                                 &$this->fields['contact_number']['value'],
                                 &$this->fields['email_address']['value'],
                                 &$this->fields['gender']['value'],
                                 &$this->fields['civil_status']['value'],
                                 &$this->fields['birthday']['value'],
                                 &$this->fields['sss_number']['value'],
                                 &$this->fields['tax_identification_number']['value'],
                                 &$this->fields['philhealth_number']['value'],
                                 &$this->fields['pagibig_number']['value'],
                                 &$this->fields['hiring_date']['value']);

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
            $this->set_update("department_id = ?, position_id = ?, first_name = ?, middle_name = ?, last_name = ?, address = ?, contact_number = ?, email_address = ?, gender = ?, civil_status = ?, birthday = ?, sss_number = ?, tax_identification_number = ?, philhealth_number = ?, pagibig_number = ?, hiring_date = ?");
            $this->set_where("employee_id = ?");

            $bind_params = array('iissssssssssssssi',
                                 &$this->fields['department_id']['value'],
                                 &$this->fields['position_id']['value'],
                                 &$this->fields['first_name']['value'],
                                 &$this->fields['middle_name']['value'],
                                 &$this->fields['last_name']['value'],
                                 &$this->fields['address']['value'],
                                 &$this->fields['contact_number']['value'],
                                 &$this->fields['email_address']['value'],
                                 &$this->fields['gender']['value'],
                                 &$this->fields['civil_status']['value'],
                                 &$this->fields['birthday']['value'],
                                 &$this->fields['sss_number']['value'],
                                 &$this->fields['tax_identification_number']['value'],
                                 &$this->fields['philhealth_number']['value'],
                                 &$this->fields['pagibig_number']['value'],
                                 &$this->fields['hiring_date']['value'],
                                 &$this->fields['employee_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("employee_id = ?");

        $bind_params = array('i',
                             &$this->fields['employee_id']['value']);

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
        $this->set_where("employee_id = ?");

        $bind_params = array('i',
                             &$this->fields['employee_id']['value']);

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
        $this->set_where("employee_id = ? AND (employee_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['employee_id']['value'],
                             &$this->fields['employee_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
