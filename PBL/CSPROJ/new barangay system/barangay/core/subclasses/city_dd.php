<?php
class city_dd
{
    static $table_name = 'city';
    static $readable_name = 'City';

    static function load_dictionary()
    {
        $fields = array(
                        'city_id' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'integer',
                                              'length'=>11,
                                              'required'=>FALSE,
                                              'attribute'=>'primary key',
                                              'control_type'=>'none',
                                              'size'=>0,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'City ID',
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
                        'city_name' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'varchar',
                                              'length'=>45,
                                              'required'=>TRUE,
                                              'attribute'=>'',
                                              'control_type'=>'textbox',
                                              'size'=>60,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'City Name',
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
                                              'rpt_show_sum'=>FALSE),
                        'nscb_code' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'integer',
                                              'length'=>11,
                                              'required'=>TRUE,
                                              'attribute'=>'',
                                              'control_type'=>'textbox',
                                              'size'=>60,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Nscb Code',
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
                                              'rpt_column_format'=>'number_format2',
                                              'rpt_column_alignment'=>'right',
                                              'rpt_show_sum'=>TRUE),
                        'province_id' => array('value'=>'',
                                              'nullable'=>FALSE,
                                              'data_type'=>'integer',
                                              'length'=>11,
                                              'required'=>TRUE,
                                              'attribute'=>'foreign key',
                                              'control_type'=>'drop-down list',
                                              'size'=>0,
                                              'upload_path'=>'',
                                              'drop_down_has_blank'=>TRUE,
                                              'label'=>'Province',
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
                                              'list_settings'=>array('query' => "SELECT province.province_id AS `Queried_province_id`, province.province_name FROM province ORDER BY province.province_name ASC",
                                                                     'list_value' => 'Queried_province_id',
                                                                     'list_items' => array('province_name'),
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
                                 'table'=>'province',
                                 'alias'=>'',
                                 'link_parent'=>'province_id',
                                 'link_child'=>'province_id',
                                 'link_subtext'=>array('province_name'),
                                 'where_clause'=>''));

        return $relations;
    }

    static function load_subclass_info()
    {
        $subclasses = array('html_file'=>'city_html.php',
                            'html_class'=>'city_html',
                            'data_file'=>'city.php',
                            'data_class'=>'city');
        return $subclasses;
    }

}