<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Edit citizen');

if(isset($_GET['citizen_id']))
{
    $citizen_id = urldecode($_GET['citizen_id']);
    require 'form_data_citizen.php';

}
debug("HELLO");
if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/citizen.php';
    $dbh_citizen = new citizen;

    $object_name = 'dbh_citizen';
    require 'components/create_form_data.php';

    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_citizen.php?$query_string");
    }


    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');

        $message .= $dbh_citizen->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_citizen->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_citizen->edit($arr_form_data);


            redirect("listview_citizen.php?$query_string");
        }
    }
}
require 'subclasses/citizen_html.php';
$html = new citizen_html;
$html->draw_header('Edit Citizen', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_hidden('citizen_id');

$html->draw_controls('edit');

$html->draw_footer();