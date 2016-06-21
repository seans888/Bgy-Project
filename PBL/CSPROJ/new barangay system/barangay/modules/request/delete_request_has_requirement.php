<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Delete request has requirement');

if(isset($_GET['request_has_requirement_id']))
{
    $request_has_requirement_id = urldecode($_GET['request_has_requirement_id']);
    require_once 'form_data_request_has_requirement.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_request_has_requirement.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require_once 'subclasses/request_has_requirement.php';
        $dbh_request_has_requirement = new request_has_requirement;

        $object_name = 'dbh_request_has_requirement';
        require 'components/create_form_data.php';

        $dbh_request_has_requirement->delete($arr_form_data);


        redirect("listview_request_has_requirement.php?$query_string");
    }
}
require 'subclasses/request_has_requirement_html.php';
$html = new request_has_requirement_html;
$html->draw_header('Delete Request Has Requirement', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('request_has_requirement_id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();