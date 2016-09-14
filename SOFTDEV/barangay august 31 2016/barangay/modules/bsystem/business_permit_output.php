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
	

	
		
	require_once 'subclasses/business_permit_fee.php';

	$dbh_business_permit_fee = new business_permit_fee;
	$business_permit_fee = $dbh_business_permit_fee->execute_query	("SELECT * FROM business_permit_fee WHERE business_permit_fee_id ='3'")->result;
	extract($business_permit_fee->fetch_assoc());
	
	
	echo"<br>";
	echo"<br>";
	echo"<link rel='stylesheet' type='text/css' href='sample.css'/>";
	
	
	echo"$fee_new";
	
	
	if ($capital_invesment == '1') {	
						echo "$f";	
	}

?>


     <center> <img src="images/form_barangay/business_permit(softcopy).png"></img></center>
     

</div>
<input type='button' value='Print this page' onClick='window.print()'>
</body>
</html>