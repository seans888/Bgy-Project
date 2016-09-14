<?php
require_once 'item_dd.php';
class item extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = item_dd::load_dictionary();
        $this->relations  = item_dd::load_relationships();
        $this->subclasses = item_dd::load_subclass_info();
        $this->table_name = item_dd::$table_name;
        $this->tables     = item_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('item_id, item_tag, name, item_type_id, photo, acquisition_date, description, active, status');
            $this->set_values("?,?,?,?,?,?,?,?,?");

            $bind_params = array('ississsss',
                                 &$this->fields['item_id']['value'],
                                 &$this->fields['item_tag']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['item_type_id']['value'],
                                 &$this->fields['photo']['value'],
                                 &$this->fields['acquisition_date']['value'],
                                 &$this->fields['description']['value'],
                                 &$this->fields['active']['value'],
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
            $this->set_update("item_tag = ?, name = ?, item_type_id = ?, photo = ?, acquisition_date = ?, description = ?, active = ?, status = ?");
            $this->set_where("item_id = ?");

            $bind_params = array('ssisssssi',
                                 &$this->fields['item_tag']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['item_type_id']['value'],
                                 &$this->fields['photo']['value'],
                                 &$this->fields['acquisition_date']['value'],
                                 &$this->fields['description']['value'],
                                 &$this->fields['active']['value'],
                                 &$this->fields['status']['value'],
                                 &$this->fields['item_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("item_id = ?");

        $bind_params = array('i',
                             &$this->fields['item_id']['value']);

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
        $this->set_where("item_id = ?");

        $bind_params = array('i',
                             &$this->fields['item_id']['value']);

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
        $this->set_where("item_id = ? AND (item_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['item_id']['value'],
                             &$this->fields['item_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
