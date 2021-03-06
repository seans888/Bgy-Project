<?php
class poa&poi_dd
{
    static $table_name = 'poa&poi';
    static $readable_name = 'Poa&poi';

    static function load_dictionary()
    {
        $fields = array(
                        'poa_poi_id' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'integer',
                                              'length'=>11,
                                              'required'=>TRUE,
                                              'attribute'=>'primary key',
                                              'control_type'=>'textbox',
                                              'size'=>60,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Poa Poi ID',
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
                                              'list_type'=>'',
                                              'list_settings'=>array(''),
                                              'rpt_in_report'=>TRUE,
                                              'rpt_column_format'=>'normal',
                                              'rpt_column_alignment'=>'center',
                                              'rpt_show_sum'=>FALSE),
                        'poa' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'varchar',
                                              'length'=>255,
                                              'required'=>TRUE,
                                              'attribute'=>'foreign key',
                                              'control_type'=>'drop-down list',
                                              'size'=>0,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Poa',
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
                                              'list_type'=>'sql generated',
                                              'list_settings'=>array('query' => "SELECT citizen.citizen_id AS `Queried_citizen_id`, citizen.proof_of_address FROM citizen ORDER BY `proof_of_address`",
                                                                     'list_value' => 'Queried_citizen_id',
                                                                     'list_items' => array('proof_of_address'),
                                                                     'list_separators' => array()),
                                              'rpt_in_report'=>TRUE,
                                              'rpt_column_format'=>'normal',
                                              'rpt_column_alignment'=>'left',
                                              'rpt_show_sum'=>FALSE),
                        'poi' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'varchar',
                                              'length'=>255,
                                              'required'=>TRUE,
                                              'attribute'=>'foreign key',
                                              'control_type'=>'drop-down list',
                                              'size'=>0,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Poi',
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
                                              'list_type'=>'sql generated',
                                              'list_settings'=>array('query' => "SELECT citizen.citizen_id AS `Queried_citizen_id`, citizen.proof_of_identity FROM citizen ORDER BY `proof_of_identity`",
                                                                     'list_value' => 'Queried_citizen_id',
                                                                     'list_items' => array('proof_of_identity'),
                                                                     'list_separators' => array()),
                                              'rpt_in_report'=>TRUE,
                                              'rpt_column_format'=>'normal',
                                              'rpt_column_alignment'=>'left',
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
                                              'list_settings'=>array('query' => "SELECT citizen.citizen_id AS `Queried_citizen_id`, citizen.first_name, citizen.last_name FROM citizen ORDER BY `first_name`, `last_name`",
                                                                     'list_value' => 'Queried_citizen_id',
                                                                     'list_items' => array('first_name', 'last_name'),
                                                                     'list_separators' => array()),
                                              'rpt_in_report'=>TRUE,
                                              'rpt_column_format'=>'number_format2',
                                              'rpt_column_alignment'=>'right',
                                              'rpt_show_sum'=>TRUE)
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
                                 'link_subtext'=>array('first_name','last_name'),
                                 'where_clause'=>''),
                           array('type'=>'1-1',
                                 'table'=>'citizen',
                                 'alias'=>'poa',
                                 'link_parent'=>'citizen_id',
                                 'link_child'=>'poa',
                                 'link_subtext'=>array('proof_of_address'),
                                 'where_clause'=>''),
                           array('type'=>'1-1',
                                 'table'=>'citizen',
                                 'alias'=>'poi',
                                 'link_parent'=>'citizen_id',
                                 'link_child'=>'poi',
                                 'link_subtext'=>array('proof_of_identity'),
                                 'where_clause'=>''));

        return $relations;
    }

    static function load_subclass_info()
    {
        $subclasses = array('html_file'=>'poa&poi_html.php',
                            'html_class'=>'poa&poi_html',
                            'data_file'=>'poa&poi.php',
                            'data_class'=>'poa&poi');
        return $subclasses;
    }

}