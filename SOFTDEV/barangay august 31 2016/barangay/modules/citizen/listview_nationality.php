<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('View nationality');

$page_title       = 'ListView: Nationality';
$db_subclass      = 'nationality';
$html_subclass    = 'nationality_html';
$arr_pkey_name    = array('nationality_id');
$results_per_page = LISTVIEW_RESULTS_PER_PAGE;

//user links / passport tags
$add_link         = 'Add nationality';
$edit_link        = 'Edit nationality';
$delete_link      = 'Delete nationality';
$view_link        = 'View nationality';

//pages - set to empty if you don't want to include them in the listview
$add_page         = 'add_nationality.php';
$edit_page        = 'edit_nationality.php';
$delete_page      = 'delete_nationality.php';
$view_page        = 'detailview_nationality.php';
$csv_page         = 'csv_nationality.php';
$report_page      = 'reporter_nationality.php';

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