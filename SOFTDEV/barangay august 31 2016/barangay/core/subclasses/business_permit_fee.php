<?php
require_once 'business_permit_fee_dd.php';
class business_permit_fee extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = business_permit_fee_dd::load_dictionary();
        $this->relations  = business_permit_fee_dd::load_relationships();
        $this->subclasses = business_permit_fee_dd::load_subclass_info();
        $this->table_name = business_permit_fee_dd::$table_name;
        $this->tables     = business_permit_fee_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('business_permit_fee_id, capital_investment, fee_new, fee_renew');
            $this->set_values("?,?,?,?");

            $bind_params = array('isii',
                                 &$this->fields['business_permit_fee_id']['value'],
                                 &$this->fields['capital_investment']['value'],
                                 &$this->fields['fee_new']['value'],
                                 &$this->fields['fee_renew']['value']);

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
            $this->set_update("capital_investment = ?, fee_new = ?, fee_renew = ?");
            $this->set_where("business_permit_fee_id = ?");

            $bind_params = array('siii',
                                 &$this->fields['capital_investment']['value'],
                                 &$this->fields['fee_new']['value'],
                                 &$this->fields['fee_renew']['value'],
                                 &$this->fields['business_permit_fee_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("business_permit_fee_id = ?");

        $bind_params = array('i',
                             &$this->fields['business_permit_fee_id']['value']);

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
        $this->set_where("business_permit_fee_id = ?");

        $bind_params = array('i',
                             &$this->fields['business_permit_fee_id']['value']);

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
        $this->set_where("business_permit_fee_id = ? AND (business_permit_fee_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['business_permit_fee_id']['value'],
                             &$this->fields['business_permit_fee_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
