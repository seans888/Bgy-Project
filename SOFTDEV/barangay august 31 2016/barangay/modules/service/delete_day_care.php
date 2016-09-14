<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Delete day care');

if(isset($_GET['day_care_id']))
{
    $day_care_id = urldecode($_GET['day_care_id']);
    require_once 'form_data_day_care.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_day_care.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require_once 'subclasses/day_care.php';
        $dbh_day_care = new day_care;

        $object_name = 'dbh_day_care';
        require 'components/create_form_data.php';

        $dbh_day_care->delete($arr_form_data);


        redirect("listview_day_care.php?$query_string");
    }
}
require 'subclasses/day_care_html.php';
$html = new day_care_html;
$html->draw_header('Delete Day Care', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('day_care_id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();