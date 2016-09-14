<?php
class request_dd
{
    static $table_name = 'request';
    static $readable_name = 'Request';

    static function load_dictionary()
    {
        $fields = array(
						 'request_id' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'integer',
                                              'length'=>11,
                                              'required'=>FALSE,
                                              'attribute'=>'primary key',
                                              'control_type'=>'none',
                                              'size'=>0,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Request ID',
                                              'extra'=>'',
                                              'companion'=>'',
                                              'in_listview'=>FALSE,
                                              'char_set_method'=>'generate_num_set',
                                              'char_set_allow_space'=>FALSE,
                                              'extra_chars_allowed'=>'-',
                                              'allow_html_tags'=>FALSE,
                                              'trim'=>'trim',
                                              'valid_set'=>array(),
                                              'date_elements'=>array('','',''),
                                              'date_default'=>'',
                                              'list_type'=>'',
                                              'list_settings'=>array(''),
                                              'rpt_in_report'=>TRUE,
                                              'rpt_column_format'=>'normal',
                                              'rpt_column_alignment'=>'center',
                                              'rpt_show_sum'=>FALSE),
						 'citizen_id' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'integer',
                                              'length'=>11,
                                              'required'=>TRUE,
                                              'attribute'=>'foreign key',
                                              'control_type'=>'drop-down list',
                                              'size'=>0,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Citizen',
                                              'extra'=>'',
                                              'companion'=>'',
                                              'in_listview'=>TRUE,
                                              'char_set_method'=>'generate_num_set',
                                              'char_set_allow_space'=>FALSE,
                                              'extra_chars_allowed'=>'-',
                                              'allow_html_tags'=>FALSE,
                                              'trim'=>'trim',
                                              'valid_set'=>array(),
                                              'date_elements'=>array('','',''),
                                              'date_default'=>'',
                                              'list_type'=>'sql generated',
                                              'list_settings'=>array('query' => "SELECT citizen.citizen_id AS `Queried_citizen_id`, citizen.first_name, citizen.middle_name, citizen.last_name FROM citizen ORDER BY first_name ASC",
                                                                     'list_value' => 'Queried_citizen_id',
                                                                     'list_items' => array('first_name', 'middle_name', 'last_name'),
                                                                     'list_separators' => array()),
                                              'rpt_in_report'=>TRUE,
                                              'rpt_column_format'=>'number_format2',
                                              'rpt_column_alignment'=>'right',
                                              'rpt_show_sum'=>TRUE),					  
                        'date_filed' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'varchar',
                                              'length'=>0,
                                              'required'=>TRUE,
                                              'attribute'=>'none',
                                              'control_type'=>'date controls',
                                              'size'=>0,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Date Filed',
                                              'extra'=>'',
                                              'companion'=>'',
                                              'in_listview'=>TRUE,
                                              'char_set_method'=>'',
                                              'char_set_allow_space'=>TRUE,
                                              'extra_chars_allowed'=>'',
                                              'allow_html_tags'=>FALSE,
                                              'trim'=>'trim',
                                              'valid_set'=>array(),
                                              'date_elements'=>array('date_filed_year','date_filed_month','date_filed_day'),
                                              'date_default'=>'',
                                              'list_type'=>'',
                                              'list_settings'=>array(''),
                                              'rpt_in_report'=>TRUE,
                                              'rpt_column_format'=>'normal',
                                              'rpt_column_alignment'=>'left',
                                              'rpt_show_sum'=>FALSE),
						'date_served' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'date',
                                              'length'=>0,
                                              'required'=>TRUE,
                                              'attribute'=>'none',
                                              'control_type'=>'date controls',
                                              'size'=>0,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Date Served',
                                              'extra'=>'',
                                              'companion'=>'',
                                              'in_listview'=>TRUE,
                                              'char_set_method'=>'',
                                              'char_set_allow_space'=>TRUE,
                                              'extra_chars_allowed'=>'',
                                              'allow_html_tags'=>FALSE,
                                              'trim'=>'trim',
                                              'valid_set'=>array(),
                                              'date_elements'=>array('date_served_year','date_served_month','date_served_day'),
                                              'date_default'=>'',
                                              'list_type'=>'',
                                              'list_settings'=>array(''),
                                              'rpt_in_report'=>TRUE,
                                              'rpt_column_format'=>'normal',
                                              'rpt_column_alignment'=>'left',
                                              'rpt_show_sum'=>FALSE)
                       
                       );
        return $fields;
    }

    static function load_relationships()
    {
        $relations = array(array('type'=>'1-M',
                                 'table'=>'sub_doc',
                                 'link_parent'=>'request_id',
                                 'link_child'=>'request_id',
                                 'where_clause'=>''),
                           array('type'=>'1-1',
                                 'table'=>'citizen',
                                 'alias'=>'',
                                 'link_parent'=>'citizen_id',
                                 'link_child'=>'citizen_id',
                                 'link_subtext'=>array('first_name','middle_name','last_name'),
                                 'where_clause'=>''));

        return $relations;
    }

    static function load_subclass_info()
    {
        $subclasses = array('html_file'=>'request_html.php',
                            'html_class'=>'request_html',
                            'data_file'=>'request.php',
                            'data_class'=>'request');
        return $subclasses;
    }

}