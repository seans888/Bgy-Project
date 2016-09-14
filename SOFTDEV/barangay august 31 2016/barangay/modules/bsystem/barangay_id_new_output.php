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
	$fee = $dbh_fee->execute_query	("SELECT * FROM fee WHERE fee_id ='3'")->result;
	extract($fee->fetch_assoc());
	
	
	
	echo"<link rel='stylesheet' type='text/css' href='css/sample.css'/>";
	
	echo" <p class='name'>$first_name $middle_name $last_name</p>";
	echo" <p class='address'>$house_number $street $city</p>";
	echo" <p class='birthdate'>$birth_date</p>";
	echo" <p class='registered'>$date_registered</p>";
	echo" <p class='contact'>$cellphone_number</p>";
	echo" <p class='contact'>$fee</p>";
	//echo" <p class='/'>$region $province $city $barangay</p>";
	
	
?>


     <center> <img class="front" src="images/form_barangay/barangay-id (front).png"></img>
	 <img class="back" src="images/form_barangay/barangay-id (back).png"></img></center>
     

</div>
<input type='button' value='Print this page' onClick='window.print()'>
</body>
</html>