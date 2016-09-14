<?php
$page_title='Barangay System';
	$stylesheet_link='style';
	
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/citizen.php';
	require 'components/get_listview_referrer.php';
	$dbh_citizen = new citizen;
	
	$username = $_SESSION['user'];
	$citizen = $dbh_citizen->execute_query	("SELECT * FROM citizen WHERE username='$username'")->result;
	extract($citizen->fetch_assoc());
	echo"<br>";
	echo"<br>";
	echo"<link rel='stylesheet' type='text/css' href='sample.css'/>";
	

?>


     <center> <img src="images/form_barangay/barangay_clearance.jpg"></img></center>
     

</div>
<input type='button' value='Print this page' onClick='window.print()'>
</body>
</html>