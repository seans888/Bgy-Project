<?php
	$page_title='Barangay System';
	$stylesheet_link='style';

	require 'header.php';
?>
<main>
<center><div class="login_layout">
		<form name="login" action="home.php" method="post">
			<input class="textbox" name="username" placeholder="Username" type="text" required="required">
			<input class="textbox" name="password" placeholder="Password" type="password" required="required">
			<input class="button" name="button" value="Login" type="submit">
		</form>
		<br>
		<p>Don't have account?<a href="register.php">Register</a></p>
</div></center>

</main>

<?php
	require 'footer.php';
?>