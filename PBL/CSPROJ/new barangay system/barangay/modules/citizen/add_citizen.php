<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Add citizen');

require 'components/get_listview_referrer.php';

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

        if($dbh_citizen->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_citizen->add($arr_form_data);
            $citizen_id = $dbh_citizen->auto_id;
            require_once 'subclasses/validate.php';
            $dbh_citizen = new validate;
            for($a=0; $a<$validate_count;$a++)
            {
                
                $param = array(
                               'validate_id'=>$citizen_id,
                               'proof_of_id'=>$cf_validate_proof_of_id[$a],
                               'proof_of_address'=>$cf_validate_proof_of_address[$a]
                              );
                $dbh_citizen->add($param);
            }


            redirect("listview_citizen.php?$query_string");
        }
    }
		if ($arr_form_data['region'] != "")
	{
		$chosen_region = $arr_form_data['region'];
	}
	
	if ($arr_form_data['province'] != "")
	{
		$chosen_province = $arr_form_data['province'];
	}
	if ($arr_form_data['city'] != "")
	{
		$chosen_city = $arr_form_data['city'];
	}
	if ($arr_form_data['barangay'] != "")
	{
		$chosen_barangay = $arr_form_data['barangay'];
	}

}
require 'subclasses/citizen_html.php';
$html = new citizen_html;
$html->draw_header('Add Citizen', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
require 'components/set_region_province_city.php';
$html->fields['validate_id']['control_type'] = 'hidden';
	

$html->draw_controls('add');

$html->draw_footer();