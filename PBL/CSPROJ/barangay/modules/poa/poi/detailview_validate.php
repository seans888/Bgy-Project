<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('View validate');

if(isset($_GET['poa_poi_id']))
{
    $poa_poi_id = urldecode($_GET['poa_poi_id']);
    require 'form_data_validate.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_back']);

    if($_POST['btn_back'])
    {
        log_action('Pressed cancel button');
        require 'components/query_string_standard.php';
        redirect("listview_validate.php?$query_string");
    }
}
require 'subclasses/validate_html.php';
$html = new validate_html;
$html->draw_header('Detail View: Validate', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->detail_view = TRUE;
$html->draw_controls('view');

$html->draw_footer();