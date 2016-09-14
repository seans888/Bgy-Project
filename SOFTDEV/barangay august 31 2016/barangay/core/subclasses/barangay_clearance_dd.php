<?php
class barangay_clearance_dd
{
    static $table_name = 'barangay_clearance';
    static $readable_name = 'Barangay Clearance';

    static function load_dictionary()
    {
        $fields = array(
                        'barangay_clearance_id' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'integer',
                                              'length'=>11,
                                              'required'=>FALSE,
                                              'attribute'=>'primary key',
                                              'control_type'=>'none',
                                              'size'=>0,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Barangay Clearance ID',
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
                        'purpose' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'text',
                                              'length'=>0,
                                              'required'=>TRUE,
                                              'attribute'=>'',
                                              'control_type'=>'textarea',
                                              'size'=>'58;5',
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Purpose',
                                              'extra'=>'',
                                              'companion'=>'',
                                              'in_listview'=>TRUE,
                                              'char_set_method'=>'',
                                              'char_set_allow_space'=>TRUE,
                                              'extra_chars_allowed'=>'',
                                              'allow_html_tags'=>FALSE,
                                              'trim'=>'trim',
                                              'valid_set'=>array(),
                                              'date_elements'=>array('','',''),
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
        $relations = array(array('type'=>'1-1',
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
        $subclasses = array('html_file'=>'barangay_clearance_html.php',
                            'html_class'=>'barangay_clearance_html',
                            'data_file'=>'barangay_clearance.php',
                            'data_class'=>'barangay_clearance');
        return $subclasses;
    }

}