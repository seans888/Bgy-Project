<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Delete skill set');

if(isset($_GET['skill_set_id']))
{
    $skill_set_id = urldecode($_GET['skill_set_id']);
    require_once 'form_data_skill_set.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_skill_set.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require_once 'subclasses/skill_set.php';
        $dbh_skill_set = new skill_set;

        $object_name = 'dbh_skill_set';
        require 'components/create_form_data.php';

        $dbh_skill_set->delete($arr_form_data);


        redirect("listview_skill_set.php?$query_string");
    }
}
require 'subclasses/skill_set_html.php';
$html = new skill_set_html;
$html->draw_header('Delete Skill Set', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('skill_set_id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();