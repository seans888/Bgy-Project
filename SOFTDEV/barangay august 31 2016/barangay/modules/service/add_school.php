<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Add school');

require 'components/get_listview_referrer.php';

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/school.php';
    $dbh_school = new school;

    $object_name = 'dbh_school';
    require 'components/create_form_data.php';
    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_school.php?$query_string");
    }


    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');

        $message .= $dbh_school->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_school->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_school->add($arr_form_data);
            

            redirect("listview_school.php?$query_string");
        }
    }
}
require 'subclasses/school_html.php';
$html = new school_html;
$html->draw_header('Add School', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_controls('add');

$html->draw_footer();