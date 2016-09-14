<?php
    $page_title='Barangay System';
    $stylesheet_link='style';
    
require 'path.php';
init_cobalt();
require 'header1.php';
require 'components/get_listview_referrer.php';
?>
<main>
    <div class="fold-body">
    <h3 class="fold-complain-head" style="width: 600px">Mag-Request ng Business Permit</h3>
    <hr class="hr"/>
    <p class="complain-desc">Bigyan ng pangalan ang iyong negosyo para maprotektahan hindi lang ito kundi pati na ang publiko</p>

<?php

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/business_permit.php';
    $dbh_business_permit = new business_permit;

    $object_name = 'dbh_business_permit';
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

        $message .= $dbh_business_permit->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_business_permit->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_business_permit->add($arr_form_data);
            

            redirect("business_permit_output.php");
        }
    }
}
require 'subclasses/business_permit_html.php';
$html = new business_permit_html;
$html->draw_header('Add Business Permit', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_controls('add');

$html->draw_footer();
?>
    </div>
</main>

<?php
    require 'footer.php';
?>