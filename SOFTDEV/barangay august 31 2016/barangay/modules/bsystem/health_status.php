<?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require 'components/get_listview_referrer.php';
	$username = $_SESSION['user'];
	
	require_once 'subclasses/citizen.php';
	$dbh_citizen1 = new citizen;
	$citizen = $dbh_citizen1->execute_query("SELECT citizen_id FROM citizen WHERE username='$username'")->result;
	extract($citizen->fetch_assoc());
	$id_citizen = $citizen_id;
	
	require_once 'subclasses/health.php';
	$dbh_health = new health;
	$dbh_health->execute_query("SELECT * FROM health WHERE citizen_id = $id_citizen");
	$result1 = $dbh_health->result;
	
?>
<main>
<div class="block-body">
<div class="fold-2">
	<h3 class="fold-2-head center-obj fold-head">Mga lugar sa Ating Barangay</h3>
	<hr class="hr"/>
<?php
//echo $city_citizen;

while($row1 = $result1->fetch_assoc()) {
			extract($row1);
			echo '<li>';
			echo $asthma;
			echo '</li>';
		
			}	

?>
</div>
</div>


</main>

<?php
	require 'footer.php';
?>