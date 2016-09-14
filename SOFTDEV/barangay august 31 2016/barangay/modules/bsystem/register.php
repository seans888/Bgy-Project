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

init_var($arr_error);
init_var($first_field);
init_var($goto_region);
init_var($goto_skill);


if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
	
    require 'components/query_string_standard.php';
    require 'subclasses/citizen.php';
    $dbh_citizen = new citizen;

    $object_name = 'dbh_citizen';
    require 'components/create_form_data_with_upload.php';
	extract($arr_form_data);
	
    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("main.php");
    }
	$file_upload_control_name="cf_validate_proof_of_id";
	$mf_upload_counter_name="validate_count";
	require 'components/upload_generic_mf.php';
	
	$file_upload_control_name="cf_validate_proof_of_address";
	$mf_upload_counter_name="validate_count";
	require 'components/upload_generic_mf.php';
	
    if($_POST['btn_submit'])
    {

        log_action('Pressed submit button');
		$dbh_citizen->fields['is_official']['required'] = FALSE;
		$dbh_citizen->fields['telephone_number']['required'] = FALSE;
		$dbh_citizen->fields['email_address']['required'] = FALSE;
		$dbh_citizen->fields['cellphone_number']['required'] = FALSE;
        $dbh_citizen->fields['date_registered']['required'] = FALSE;
        $dbh_citizen->fields['father_first_name']['required'] = FALSE;
        $dbh_citizen->fields['father_middle_name']['required'] = FALSE;
        $dbh_citizen->fields['father_last_name']['required'] = FALSE;
        $dbh_citizen->fields['father_contact_number']['required'] = FALSE;
        $dbh_citizen->fields['father_occupation']['required'] = FALSE;
      
		
		for($i=0; $i<$validate_count; ++$i)
		{
			$arr_form_data['cf_validate_status'][$i] = 'Wait list';
		}
		
		//$message .= $dbh_citizen->sanitize($arr_form_data)->lst_error;
        $arr_error = $dbh_citizen->sanitize_new($arr_form_data)->lst_error;
		extract($arr_form_data);

        if($dbh_citizen->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

     if($message=="" AND empty($arr_error))
        {
            $dbh_citizen->add($arr_form_data);
            $citizen_id = $dbh_citizen->auto_id;
            require_once 'subclasses/validate.php';
            $dbh_citizen = new validate;
            for($a=0; $a<$validate_count;$a++)
            {
                
                $param = array(
                               'proof_of_id'=>$cf_validate_proof_of_id[$a],
                               'proof_of_address'=>$cf_validate_proof_of_address[$a],
                               'citizen_id'=>$citizen_id,
                               'status'=>$cf_validate_status[$a]
                              );
                $dbh_citizen->add($param);
            }
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
	if(!$_POST['btn_cancel'] && !$_POST['btn_submit'])
	{
		if($_POST['trigger_field'] == 'skill')
		{
			$goto_skill = TRUE;
		}
		else
		{
			$goto_region = TRUE;
		}
	}

		if ($arr_form_data['skill_set_id'] != "")
	{
		$chosen_skill = $arr_form_data['skill_set_id'];
	}
}
?>
<main>
	<div class="register_layout">
	<?php
require 'subclasses/citizen_html.php';
$html = new citizen_html;
$html->draw_header(' ', $message, $message_type,TRUE,TRUE);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

if(empty($arr_error))
{
    //Don't do anything
}
else
{
    $first_field_check = TRUE;
    foreach($arr_error as $field_name=>$error_message)
    {
        if($first_field_check)
        {
            $first_field = $field_name;
            $first_field_check = FALSE;
        }

        $html->fields["$field_name"]['extra'] .= ' style = "box-shadow: 0 0 8px #ff0000"';
        $html->fields["$field_name"]['companion'] = '<p style="color: #dd0000; margin-bottom: 10px; padding-left: 5px">' . $error_message . '</p>';
    }
}


require 'components/set_region_province_city.php';
require 'components/set_skill.php';

$html->fields['date_registered']['control_type'] = 'hidden';
$html->fields['is_official']['control_type'] = 'hidden';



//$html->draw_controls('add');

/****** Customized Form **********/
/*echo '<link rel="stylesheet" href="/' . BASE_DIRECTORY . '/core/thirdparty/jquery-ui/jquery-ui.min.css">' . "\r\n";
echo '<script src="/' . BASE_DIRECTORY . '/core/thirdparty/jquery-ui/jquery-ui.min.js"></script>' . "\r\n";
echo '<script src="/' . BASE_DIRECTORY . '/core/thirdparty/jquery-3.0.0.min.js"></script>' . "\r\n";*/


$html->draw_container_div_start();
$html->draw_fieldset_header('REGISTER');
$html->draw_fieldset_body_start();
$html->draw_table_tags = FALSE;

echo '<div id="tabs">' . "\r\n";
echo '<ul>';
echo '<li><a href="#tabs-1">Personal Information</a></li>' . "\r\n";
echo '<li><a href="#tabs-2">Physical Information</a></li>' . "\r\n";
echo '<li><a href="#tabs-3">Skill Set Information</a></li>' . "\r\n";
echo '<li><a href="#tabs-4">Contact Information</a></li>' . "\r\n";
echo '<li><a href="#tabs-5">Address</a></li>' . "\r\n";
echo '<li><a href="#tabs-6">Account Information</a></li>' . "\r\n";
echo '<li><a href="#tabs-7">Family Information</a></li>' . "\r\n";
echo '<li><a href="#tabs-8">Validation</a></li>' . "\r\n";
echo '</ul>';

//tab 1
echo '<div id="tabs-1">';
echo '<table>';
echo '<tr>';
	echo '<td>First Name:</td>';
	echo '<td>';
		//$html->fields['first_name']['extra']='id="first_name"';
		$html->draw_field('first_name');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Middle Name:</td>';
	echo '<td>';
		$html->draw_field('middle_name');
	echo '</td>';
echo '</tr>';	
echo '<tr>';
	echo '<td>Last Name:</td>';
	echo '<td>';
		$html->draw_field('last_name');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Gender:</td>';
	echo '<td>';
		$html->draw_field('gender');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Civil Status:</td>';
	echo '<td>';
		$html->draw_field('civil_status');
	echo '</td>';
echo '</tr>';
echo '</table>';
echo '</div>'; //end tag of tabs-1 id

//tab2
echo '<div id="tabs-2">';
echo '<table>';
echo '<tr>';
	echo '<td>Birth Date:</td>';
	echo '<td>';
		$html->draw_field('birth_date');
	echo '</td>';
echo '</tr>';

echo '<tr>';
	echo '<td>Birth Place:</td>';
	echo '<td>';
		$html->draw_field('birth_place');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Weight(kg):</td>';
	echo '<td>';
		$html->draw_field('weight');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Height(cm):</td>';
	echo '<td>';
		$html->draw_field('height');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Are you a Person With Disability:</td>';
	echo '<td>';
		$html->draw_field('pwd');
	echo '</td>';
echo '</tr>';
echo '</table>';
echo '</div>'; //end tag of tabs-2 id

//tab3
echo '<div id="tabs-3">';
echo '<table>';
echo '<tr>';
	echo '<td>Occupation:</td>';
	echo '<td>';
		$html->draw_field('occupation');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Category of skill:</td>';
	echo '<td>';
		$html->draw_field('skill_set_id');
	echo '</td>';
echo '</tr>';echo '<tr>';
	echo '<td>Skill:</td>';
	echo '<td>';
		$html->draw_field('skill_id');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Nationality:</td>';
	echo '<td>';
		$html->draw_field('nationality');
	echo '</td>';
echo '</tr>';
echo '</table>';
echo '<tr>';
	echo '<td>Citizenship:</td>';
	echo '<td>';
		$html->draw_field('citizenship');
	echo '</td>';
echo '</tr>';
echo '</table>';
echo '</div>'; 
 //end tag of tabs-3 id

//tab4
echo '<div id="tabs-4">';
echo '<table>';
echo '<tr>';
	echo '<td>Cellphone Number:</td>';
	echo '<td>';
		$html->draw_field('cellphone_number');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Telephone Number:</td>';
	echo '<td>';
		$html->draw_field('telephone_number');
	echo '</td>';
echo '</tr>';
echo '</table>';
echo '</div>';
//end tag of tabs-4 id

//tab5
echo '<div id="tabs-5">';
echo '<table>';
echo '<tr>';
	echo '<td>Region:</td>';
	echo '<td>';
		$html->draw_field('region');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Province:</td>';
	echo '<td>';
		$html->draw_field('province');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>City:</td>';
	echo '<td>';
		$html->draw_field('city');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Barangay:</td>';
	echo '<td>';
		$html->draw_field('barangay');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>District:</td>';
	echo '<td>';
		$html->draw_field('district');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Zip Code:</td>';
	echo '<td>';
		$html->draw_field('zip_code');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Street:</td>';
	echo '<td>';
		$html->draw_field('street');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>House Number:</td>';
	echo '<td>';
		$html->draw_field('house_number');
	echo '</td>';
echo '</tr>';
echo '</table>';
echo '</div>'; 
//end tag of tabs-5 id

//tab6
echo '<div id="tabs-6">';
echo '<table>';
echo '<tr>';
	echo '<td>Username:</td>';
	echo '<td>';
		$html->draw_field('username');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Password:</td>';
	echo '<td>';
		$html->draw_field('password');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Email Address:</td>';
	echo '<td>';
		$html->draw_field('email_address');
	echo '</td>';
echo '</tr>';
echo '</table>';
echo '</div>'; //end tag of tabs-6 id

//tab7
echo '<div id="tabs-7">';
echo '<table>';
echo '<tr>';
	echo '<td>Father First Name:</td>';
	echo '<td>';
		$html->draw_field('father_first_name');
	echo '</td>';
		echo '<td>Father Middle Name:</td>';
	echo '<td>';
		$html->draw_field('father_middle_name');
	echo '</td>';
	echo '<td>Father Last Name:</td>';
	echo '<td>';
		$html->draw_field('father_last_name');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo "<td>Father's Contact number :</td>";
	echo '<td>';
		$html->draw_field('father_contact_number');
	echo '</td>';
	
	echo "<td>Father's Occupation :</td>";
	echo '<td>';
		$html->draw_field('father_occupation');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo '<td>Mother First Name:</td>';
	echo '<td>';
		$html->draw_field('mother_first_name');
	echo '</td>';
		echo '<td>Mother Middle Name:</td>';
	echo '<td>';
		$html->draw_field('mother_middle_name');
	echo '</td>';
	echo '<td>Mother Last Name:</td>';
	echo '<td>';
		$html->draw_field('mother_last_name');
	echo '</td>';
echo '</tr>';
echo '<tr>';
	echo "<td>Mother's Contact number :</td>";
	echo '<td>';
		$html->draw_field('mother_contact_number');
	echo '</td>';
	
	echo "<td>Mother's Occupation :</td>";
	echo '<td>';
		$html->draw_field('mother_occupation');
	echo '</td>';
echo '</tr>';

echo '</table>';
echo '</div>'; //end tag of tabs-7 id

//tab8
echo '<div id="tabs-8">';
echo '<table>';


echo '<tr>';
	echo '<td>';
		$obj_validate=cobalt_load_class('validate_html');
		$obj_validate->fields['status']['control_type']='hidden';
		$obj_validate->draw_controls_mf();
	echo '</td>';
echo '</tr>';
echo '<table>';
echo '<tr>';
	echo '<td>Are you a Citizen of the barangay?</td>';
	echo '<td>';
		$html->draw_field('is_citizen');
	echo '</td>';
	echo '</tr>';
echo'</table>';
echo'</table>';
echo '</div>'; //end tag of tabs-8 id

echo '</div>'; //end tag of tabs id
$html->draw_fieldset_body_end();
$html->draw_fieldset_footer_start();
$html->draw_submit_cancel();
$html->draw_fieldset_footer_end();
$html->draw_container_div_end();

/*********************************/

$html->draw_hidden('trigger_field');

$html->draw_footer();
if(strlen($first_field) > 0)
{
    $html->autofocus($first_field);
}
echo '<script>
		  $(function() {
			$("#tabs").tabs();
		  });
	  </script>';
	?>
	</div>
</main>
<?php
if ($goto_region)
{
?>
	<script>
	window.location.href= "#tabs-5" 
	</script>
<?php
}
else{
if ($goto_skill)
{
?>
	<script>
	window.location.href= "#tabs-3" 
	</script>
<?php
}

}
?>


<script>
function validate(){
	var first_name= document.getElementById("first_name").value;
	
	if(document.getElementById("first_name").value==''){
		document.getElementById("first_name").style.boxShadow="0 0 8px #ff0000";

	}
 

	
	return false;
	
}
</script>

<?php
	require 'footer1.php';
?>