<?php
$page_title='Barangay System';
$stylesheet_link='style';

require 'path.php';
init_cobalt();
require 'header1.php';

require 'components/get_listview_referrer.php';
$username = $_SESSION['user'];
require_once 'subclasses/citizen.php';
$dbh_citizen = new citizen;
$citizen = $dbh_citizen->execute_query("SELECT citizen_id FROM citizen WHERE username='$username'")->result;

extract($citizen->fetch_assoc());
?>

<main>
<div class="fold-body">
    <h3 class="fold-complain-head" style="width: 650px">Mag-Request ng Barangay Clearance</h3>
    <hr class="hr"/>
    <p class="complain-desc">Patunayang ikaw ay isang mabuting mamamayan sa ating barangay! Ilagay ang iyong dahilan kung bakit kailangan mo nito</p>

<?php
if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/barangay_clearance.php';
    $dbh_barangay_clearance = new barangay_clearance;

    $object_name = 'dbh_barangay_clearance';
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

        $message .= $dbh_barangay_clearance->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_barangay_clearance->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_barangay_clearance->add($arr_form_data);
            

            redirect("request.php");
        }
    }
}
require 'subclasses/barangay_clearance_html.php';
$html = new barangay_clearance_html;
$html->draw_header('Add Barangay Clearance', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
if ($citizen_id != '') {
	$html->fields['citizen_id']['extra'] = 'disabled=disabled';
	$html->draw_hidden('citizen_id');

}
$html->draw_controls('add');

$html->draw_footer();
?>
    </div>


</main>
<?php
    require 'footer.php';
?>