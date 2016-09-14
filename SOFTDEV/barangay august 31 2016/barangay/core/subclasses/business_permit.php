<?php
require_once 'business_permit_dd.php';
class business_permit extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = business_permit_dd::load_dictionary();
        $this->relations  = business_permit_dd::load_relationships();
        $this->subclasses = business_permit_dd::load_subclass_info();
        $this->table_name = business_permit_dd::$table_name;
        $this->tables     = business_permit_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('business_permit_id, company_name, office_tel_num, region, province, city, barangay, district, zip_code, street, office_number, email, website, fax_num, name_of_owner, contact_of_owner, name_of_mngr, contact_of_mngr, type_of_business, line_of_business, capital_investment, fee_new, fee_renew, type');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('isiiiiiiisissisisissiiis',
                                 &$this->fields['business_permit_id']['value'],
                                 &$this->fields['company_name']['value'],
                                 &$this->fields['office_tel_num']['value'],
                                 &$this->fields['region']['value'],
                                 &$this->fields['province']['value'],
                                 &$this->fields['city']['value'],
                                 &$this->fields['barangay']['value'],
                                 &$this->fields['district']['value'],
                                 &$this->fields['zip_code']['value'],
                                 &$this->fields['street']['value'],
                                 &$this->fields['office_number']['value'],
                                 &$this->fields['email']['value'],
                                 &$this->fields['website']['value'],
                                 &$this->fields['fax_num']['value'],
                                 &$this->fields['name_of_owner']['value'],
                                 &$this->fields['contact_of_owner']['value'],
                                 &$this->fields['name_of_mngr']['value'],
                                 &$this->fields['contact_of_mngr']['value'],
                                 &$this->fields['type_of_business']['value'],
                                 &$this->fields['line_of_business']['value'],
                                 &$this->fields['capital_investment']['value'],
                                 &$this->fields['fee_new']['value'],
                                 &$this->fields['fee_renew']['value'],
                                 &$this->fields['type']['value']);

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
            $this->set_update("company_name = ?, office_tel_num = ?, region = ?, province = ?, city = ?, barangay = ?, district = ?, zip_code = ?, street = ?, office_number = ?, email = ?, website = ?, fax_num = ?, name_of_owner = ?, contact_of_owner = ?, name_of_mngr = ?, contact_of_mngr = ?, type_of_business = ?, line_of_business = ?, capital_investment = ?, fee_new = ?, fee_renew = ?, type = ?");
            $this->set_where("business_permit_id = ?");

            $bind_params = array('siiiiiiisissisisissiiisi',
                                 &$this->fields['company_name']['value'],
                                 &$this->fields['office_tel_num']['value'],
                                 &$this->fields['region']['value'],
                                 &$this->fields['province']['value'],
                                 &$this->fields['city']['value'],
                                 &$this->fields['barangay']['value'],
                                 &$this->fields['district']['value'],
                                 &$this->fields['zip_code']['value'],
                                 &$this->fields['street']['value'],
                                 &$this->fields['office_number']['value'],
                                 &$this->fields['email']['value'],
                                 &$this->fields['website']['value'],
                                 &$this->fields['fax_num']['value'],
                                 &$this->fields['name_of_owner']['value'],
                                 &$this->fields['contact_of_owner']['value'],
                                 &$this->fields['name_of_mngr']['value'],
                                 &$this->fields['contact_of_mngr']['value'],
                                 &$this->fields['type_of_business']['value'],
                                 &$this->fields['line_of_business']['value'],
                                 &$this->fields['capital_investment']['value'],
                                 &$this->fields['fee_new']['value'],
                                 &$this->fields['fee_renew']['value'],
                                 &$this->fields['type']['value'],
                                 &$this->fields['business_permit_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("business_permit_id = ?");

        $bind_params = array('i',
                             &$this->fields['business_permit_id']['value']);

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
        $this->set_where("business_permit_id = ?");

        $bind_params = array('i',
                             &$this->fields['business_permit_id']['value']);

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
        $this->set_where("business_permit_id = ? AND (business_permit_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['business_permit_id']['value'],
                             &$this->fields['business_permit_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
