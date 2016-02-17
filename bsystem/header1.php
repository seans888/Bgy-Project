<?php

?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo $page_title; ?></title>
	<link rel="shortcut icon" href="images/logo.png">
	<link rel="stylesheet" type="text/css" href="css/<?php echo $stylesheet_link; ?>.css"/>
</head>

<body>
	<div class="wrapper">
		<header class="header">
			<img class="logo" src="images/logo.png"></img>
			<font class="font title">Barangay System</font>

			<ul class="font nav">
				<li><a href="about.php">About</a></li>
				<li><a href="contact.php">Contact Us</a></li>
			</ul>
			<div class="dropdown font nav">
				<button class="dropbtn">Services</button>
				<div class="dropdown-content">
					<a href="Documents">Documents</a>
					<a href="Health">Health</a>
					<a href="Education">Education</a>
				</div>
			</div>
		</header>
	</div>

