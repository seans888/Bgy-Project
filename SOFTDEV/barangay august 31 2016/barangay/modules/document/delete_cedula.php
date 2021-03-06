<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Delete cedula');

if(isset($_GET['cedula_id']))
{
    $cedula_id = urldecode($_GET['cedula_id']);
    require_once 'form_data_cedula.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_cedula.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require_once 'subclasses/cedula.php';
        $dbh_cedula = new cedula;

        $object_name = 'dbh_cedula';
        require 'components/create_form_data.php';

        $dbh_cedula->delete($arr_form_data);


        redirect("listview_cedula.php?$query_string");
    }
}
require 'subclasses/cedula_html.php';
$html = new cedula_html;
$html->draw_header('Delete Cedula', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('cedula_id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();