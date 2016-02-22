<?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	$rstylesheet_link='responsive';
	require 'header1.php';
?>
<main>
<div class="clearfix">
<div class="login_layout main mobile-collapse one-half">
	<form action="home.php" method="post">
		<label for="fname">Username</label>
  		<input type="text" id="fname" name="fname" required="required">
  		<label for="fname">Password</label>
  		<input type="password" id="lname" name="lname" password="password" required="required">
  		<input class="button" type="submit" name="login" style="vertical-align:middle" value="Log In">
	</form>

</div>
<div class="welcome-layout side mobile-collapse one-half-second">
<h3>Welcome to Barangay System</h3><br/>
<p>This site lets you know the current events
	within your barangay, 
	request document forms and update
	your details.</p>

</div>
</div>
</main>


 
<?php
	require 'footer.php';
?>