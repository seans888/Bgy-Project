<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Edit employee certifications');

if(isset($_GET['employee_certification_id']))
{
    $employee_certification_id = urldecode($_GET['employee_certification_id']);
    require 'form_data_employee_certifications.php';

}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/employee_certifications.php';
    $dbh_employee_certifications = new employee_certifications;

    $object_name = 'dbh_employee_certifications';
    require 'components/create_form_data.php';

    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_employee_certifications.php?$query_string");
    }


    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');

        $message .= $dbh_employee_certifications->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_employee_certifications->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_employee_certifications->edit($arr_form_data);


            redirect("listview_employee_certifications.php?$query_string");
        }
    }
}
require 'subclasses/employee_certifications_html.php';
$html = new employee_certifications_html;
$html->draw_header('Edit Employee Certifications', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_hidden('employee_certification_id');

$html->draw_controls('edit');

$html->draw_footer();