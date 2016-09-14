<?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	

?>
<div class="div-calendar">
<?php
include 'calendar.php';
 
$calendar = new Calendar();
 
echo $calendar->show();
?>
</div>

<?php
require 'footer.php';

?>