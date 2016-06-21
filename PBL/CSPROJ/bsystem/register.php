<?php
	$page_title='Barangay System';
	$stylesheet_link='style';

	require 'header1.php';
	require 'path.php';
	init_cobalt();

require 'components/get_listview_referrer.php';

?>

<main>
	<center><div class="register_layout">
	
<?php
require 'subclasses/citizen_html.php';
$html = new citizen_html;
$html->draw_header('Add Citizen', $message, $message_type, TRUE, TRUE);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_controls('add');

$html->draw_footer();
	
	
	
?>
</div></center>
</main>



<?php
require 'footer.php';
?>