<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('View validate');

$page_title       = 'ListView: Validate';
$db_subclass      = 'validate';
$html_subclass    = 'validate_html';
$arr_pkey_name    = array('validate_id');
$results_per_page = LISTVIEW_RESULTS_PER_PAGE;

//user links / passport tags
$add_link         = 'Add validate';
$edit_link        = 'Edit validate';
$delete_link      = 'Delete validate';
$view_link        = 'View validate';

//pages - set to empty if you don't want to include them in the listview
$add_page         = 'add_validate.php';
$edit_page        = 'edit_validate.php';
$delete_page      = 'delete_validate.php';
$view_page        = 'detailview_validate.php';
$csv_page         = 'csv_validate.php';
$report_page      = 'reporter_validate.php';

//Extra entries under operations column (name of include file, not html code)
$operations_extra = '';

//Formatting and alignment options for data columns
$arr_formatting   = array();
$arr_alignment    = array();

//For custom join & select clause, you need to set the following variables so that the default
//listview components do not rely on DD data
$join_clause       = '';
$where_clause      = "";
$lst_fields        = '';
$arr_fields        = '';
$arr_field_labels  = '';
$lst_filter_fields = '';
$arr_filter_field_labels = '';
$arr_subtext_separators  = '';

//ORDER BY clause to use before a user clicks an ascending/descending column arrow.
$default_sort_order = '';

//Uncomment $print_settings and enable DEBUG_MODE to show the values of the settings for custom join & select
//$print_settings=TRUE;


require 'components/listview_proc_head.php';
require 'components/listview_proc_html.php';
require 'components/listview_proc_query.php';
require 'components/listview_body_head.php';
require 'components/listview_body_data.php';
require 'components/listview_body_end.php';