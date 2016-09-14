<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Delete business permit');

if(isset($_GET['business_permit_id']))
{
    $business_permit_id = urldecode($_GET['business_permit_id']);
    require_once 'form_data_business_permit.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_business_permit.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require_once 'subclasses/business_permit.php';
        $dbh_business_permit = new business_permit;

        $object_name = 'dbh_business_permit';
        require 'components/create_form_data.php';

        $dbh_business_permit->delete($arr_form_data);


        redirect("listview_business_permit.php?$query_string");
    }
}
require 'subclasses/business_permit_html.php';
$html = new business_permit_html;
$html->draw_header('Delete Business Permit', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('business_permit_id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();