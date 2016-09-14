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
	
	
	require_once 'subclasses/fee.php';
	$dbh_fee = new fee;
	$fee = $dbh_fee->execute_query	("SELECT * FROM fee WHERE fee_id ='2'")->result;
	extract($fee->fetch_assoc());
	
	echo"<br>";
	echo"<br>";
	echo" <p class='contact'>$fee</p>";
	echo"<link rel='stylesheet' type='text/css' href='sample.css'/>";
	

?>


     <center> <img src="images/form_barangay/barangay_clearance.jpg"></img></center>
     

</div>
<input type='button' value='Print this page' onClick='window.print()'>
</body>
</html>