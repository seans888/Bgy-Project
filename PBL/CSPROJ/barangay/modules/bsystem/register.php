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
        redirect("main.php");
    }

    $file_upload_control_name = 'proof_of_identity';
    require 'components/upload_generic.php';
    $file_upload_control_name = 'proof_of_address';
    require 'components/upload_generic.php';

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');
		
		require 'components/set_region_province_city.php';
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
            
			require_once 'subclasses/person.php';
			$dbh_person = new person;
			$dbh_person->add($arr_form_data);
			$person_id = $dbh_person->auto_id;
			$arr_form_data['person_id'] = $person_id;
			
            require 'password_crypto.php';
            //Hash the password using default Cobalt password hashing technique
            $hashed_password = cobalt_password_hash('NEW',$password, $username, $new_salt, $new_iteration, $new_method);

            $arr_form_data['password'] = $hashed_password;
            $arr_form_data['salt'] = $new_salt;
            $arr_form_data['iteration'] = $new_iteration;
            $arr_form_data['method'] = $new_method;
            $arr_form_data['role_id'] = 3;
            $arr_form_data['skin_id'] = 1;
			
			require_once 'subclasses/user.php';
			$dbh_user = new user;
			$dbh_user->add($arr_form_data);

            //Permissions from role, if role was chosen
            if($arr_form_data['role_id']!='')
            {
                $db = new data_abstraction();
                $db->execute_query("INSERT `user_passport` SELECT '" . quote_smart($username) . "', `link_id` FROM user_role_links WHERE role_id='" . quote_smart($arr_form_data['role_id']) . "'");
            }
            redirect("notification.php");
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
require 'components/set_region_province_city.php';
$html->fields['is_citizen']['control_type'] = 'hidden';
$html->fields['date_registered']['control_type'] = 'hidden';
$html->fields['is_official']['control_type'] = 'hidden';
	
$html->draw_controls('add');

$html->draw_footer();
	?>
	</div>

</main>

<?php
	require 'footer.php';
?>