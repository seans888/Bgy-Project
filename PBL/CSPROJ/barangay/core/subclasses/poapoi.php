<?php
require_once 'poapoi_dd.php';
class poapoi extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = poapoi_dd::load_dictionary();
        $this->relations  = poapoi_dd::load_relationships();
        $this->subclasses = poapoi_dd::load_subclass_info();
        $this->table_name = poapoi_dd::$table_name;
        $this->tables     = poapoi_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('poa_poi_id, poa, poi, citizen_id');
            $this->set_values("?,?,?,?");

            $bind_params = array('issi',
                                 &$this->fields['poa_poi_id']['value'],
                                 &$this->fields['poa']['value'],
                                 &$this->fields['poi']['value'],
                                 &$this->fields['citizen_id']['value']);

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
            $this->set_update("poa_poi_id = ?, poa = ?, poi = ?, citizen_id = ?");
            $this->set_where("poa_poi_id = ?");

            $bind_params = array('issii',
                                 &$this->fields['poa_poi_id']['value'],
                                 &$this->fields['poa']['value'],
                                 &$this->fields['poi']['value'],
                                 &$this->fields['citizen_id']['value'],
                                 $param['orig_poa_poi_id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("poa_poi_id = ?");

        $bind_params = array('i',
                             &$this->fields['poa_poi_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("poa_poi_id = ?");

        $bind_params = array('i',
                             &$this->fields['poa_poi_id']['value']);

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
        $this->set_where("poa_poi_id = ?");

        $bind_params = array('i',
                             &$this->fields['poa_poi_id']['value']);

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
        $this->set_where("poa_poi_id = ? AND (poa_poi_id != '$orig_poa_poi_id')");

        $bind_params = array('i',
                             &$this->fields['poa_poi_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
