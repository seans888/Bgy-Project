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
	$citizen = $dbh_citizen1->execute_query("SELECT city FROM citizen WHERE username='$username'")->result;
	extract($citizen->fetch_assoc());
	$city_citizen = $city;
	
	require_once 'subclasses/health_center.php';
	$dbh_health_center = new health_center;
	$dbh_health_center->execute_query("SELECT health_center_name, address FROM health_center WHERE city = $city_citizen");
	$result1 = $dbh_health_center->result;
	
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
			echo $health_center_name;
			echo '</li>';
			echo '<li>';
			echo $address;
			echo '</li>';
			}	

?>
</div>
</div>


</main>

<?php
	require 'footer.php';
?>