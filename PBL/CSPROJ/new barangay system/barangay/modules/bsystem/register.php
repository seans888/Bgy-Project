<?php

	
require 'path.php';
init_cobalt();

$page_title='Barangay System';
    $stylesheet_link='style';

		require 'header.php';

      $data_con = new data_abstraction;
$data_con->set_fields('skin_name, header, footer, master_css, colors_css, fonts_css, override_css, icon_set');
$data_con->set_table('system_skins');
$data_con->set_where("skin_id=1");
$data_con->exec_fetch('single');
if($data_con->num_rows==1)
{
    extract($data_con->dump);
    $_SESSION['header']       = $header;
    $_SESSION['footer']       = $footer;
    $_SESSION['skin']         = $skin_name;
    $_SESSION['master_css']   = $master_css;
    $_SESSION['colors_css']   = $colors_css;
    $_SESSION['fonts_css']    = $fonts_css;
    $_SESSION['override_css'] = $override_css;
    $_SESSION['icon_set']     = $icon_set;
    if(trim($_SESSION['icon_set'] == ''))
    {
        $_SESSION['icon_set'] = 'cobalt';
    }
}
$data_con->close_db();

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

		$dbh_citizen->fields['is_citizen']['required'] = FALSE;
		$dbh_citizen->fields['is_official']['required'] = FALSE;
		$dbh_citizen->fields['cellphone_number']['required'] = FALSE;
		$dbh_citizen->fields['telephone_number']['required'] = FALSE;
		$dbh_citizen->fields['email_address']['required'] = FALSE;
		$dbh_citizen->fields['date_registered']['required'] = FALSE;

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
?>
<main>
	<div class="register_layout">
	<?php
require 'subclasses/citizen_html.php';
$html = new citizen_html;
$html->draw_header('Add Citizen', $message, $message_type, TRUE, TRUE);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->fields['is_citizen']['control_type'] = 'hidden';
$html->fields['date_registered']['control_type'] = 'hidden';
$html->fields['is_official']['control_type'] = 'hidden';
require 'components/set_region_province_city.php';	
$html->draw_controls('add');

$html->draw_footer();
	?>
	</div>

</main>

<?php
	require 'footer.php';
?>