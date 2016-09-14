<?php

require 'path.php';
init_cobalt();

$page_title='Barangay System';
$stylesheet_link='style';
	
require 'header1.php';
require 'components/get_listview_referrer.php';

$username = $_SESSION['user'];
require_once 'subclasses/citizen.php';
$dbh_citizen = new citizen;
$citizen = $dbh_citizen->execute_query("SELECT citizen_id FROM citizen WHERE username='$username'")->result;
extract($citizen->fetch_assoc());
?>
<div class="block-body">

<?php
if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/request.php';
    $dbh_request = new request;

    $object_name = 'dbh_request';
    require 'components/create_form_data.php';
    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("documents.php");
    }


    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');	
		$dbh_request->fields['date_served']['required'] = FALSE;
		require_once 'subclasses/sub_doc.php';
		$dbh_sub_doc = new sub_doc;
		$dbh_sub_doc->fields['status']['required'] = FALSE;

        $message .= $dbh_request->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_request->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_request->add($arr_form_data);
            $request_id = $dbh_request->auto_id;
            require_once 'subclasses/sub_doc.php';
            $dbh_request = new sub_doc;
            for($a=0; $a<$sub_doc_count;$a++)
            {
                
                    $param = array(
                               'request_id'=>$request_id,
                               'document_id'=>$cf_sub_doc_document_id[$a],
                               'requirement_id'=>$cf_sub_doc_requirement_id[$a],
                               'requirement_doc'=>$cf_sub_doc_requirement_doc[$a],
                               'status'=>$cf_sub_doc_status[$a]
                              );
                $dbh_request->add($param);
            }

			if($cf_sub_doc_document_id[0] == '1')
			{
				redirect("business_permit_output.php");
			}
			else
			{
				if($cf_sub_doc_document_id[0] == '2')
				{
					redirect("business_permit_output.php");
				}
			else
			{
				if($cf_sub_doc_document_id[0] == '3')
				{
					redirect("barangay_clearance_new_output.php");
				}
			else
			{
				if($cf_sub_doc_document_id[0] == '4')
				{
					redirect("barangay_clearance_renew_output.php");
				}
			else
			{
				if($cf_sub_doc_document_id[0] == '5')
				{
					redirect("barangay_id_new_output.php");
				}
			else
			{
				if($cf_sub_doc_document_id[0] == '6')
				{
					redirect("barangay_id_renew_output.php");
				}
				
			else
			{
				if($cf_sub_doc_document_id[0] == '7')
				{
					redirect("cedula_output.php");
				}
			}
			}	
			}	
			}				
			}
			
            }
        }
    }
}
require 'subclasses/request_html.php';
$html = new request_html;
$html->draw_header(' ', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->fields['date_served']['control_type'] = 'hidden';


if ($citizen_id != '') {
	$html->fields['citizen_id']['extra'] = 'disabled=disabled';
	$html->draw_hidden('citizen_id');
}


$html_subdoc = cobalt_load_class('sub_doc_html');
$html_subdoc->fields['status']['control_type'] = "hidden";

$html->bind_child('sub_doc',$html_subdoc);
$html->draw_controls('add');


$html->draw_footer();

?>
</div>
<?php
require 'footer.php';
?>