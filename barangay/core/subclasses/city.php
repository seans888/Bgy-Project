<?php
require_once 'city_dd.php';
class city extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = city_dd::load_dictionary();
        $this->relations  = city_dd::load_relationships();
        $this->subclasses = city_dd::load_subclass_info();
        $this->table_name = city_dd::$table_name;
        $this->tables     = city_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('city_id, city_name, nscb_code, province_id');
            $this->set_values("?,?,?,?");

            $bind_params = array('isii',
                                 &$this->fields['city_id']['value'],
                                 &$this->fields['city_name']['value'],
                                 &$this->fields['nscb_code']['value'],
                                 &$this->fields['province_id']['value']);

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
            $this->set_update("city_id = ?, city_name = ?, nscb_code = ?, province_id = ?");
            $this->set_where("city_id = ?");

            $bind_params = array('isiii',
                                 &$this->fields['city_id']['value'],
                                 &$this->fields['city_name']['value'],
                                 &$this->fields['nscb_code']['value'],
                                 &$this->fields['province_id']['value'],
                                 $param['orig_city_id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("city_id = ?");

        $bind_params = array('i',
                             &$this->fields['city_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("city_id = ?");

        $bind_params = array('i',
                             &$this->fields['city_id']['value']);

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
        $this->set_where("city_id = ?");

        $bind_params = array('i',
                             &$this->fields['city_id']['value']);

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
        $this->set_where("city_id = ? AND (city_id != '$orig_city_id')");

        $bind_params = array('i',
                             &$this->fields['city_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
