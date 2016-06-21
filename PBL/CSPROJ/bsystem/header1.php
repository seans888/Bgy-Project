<!DOCTYPE html>
<html>
<head>
	<title><?php echo $page_title; ?></title>
	<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="css/<?php echo $stylesheet_link; ?>.css"/>
	<link rel="stylesheet" type="text/css" href="css/<?php echo $rstylesheet_link; ?>.css"/ media="screen and (max-width: 900px">
</head>

<body>
	<div class="wrapper ">
		<header class="header">
			<img class="logo" src="images/logo.png"></img>
			<font class="font title">Barangay System</font>
			<ul>
				
				<li><a href="index.php">Log Out</a></li>
				<li><a href="contact.php">Contact Us</a></li>
				<li><a href="about.php">About</a></li>
				<ul style="float:left;list-style-type:none;">
				
					<li><a href="information.php">Information</a></li>
						<li class="dropdown">
						<a href="#" class="dropbtn">Documents</a>
							<div class="dropdown-content">
								<a href="#">Barangay ID</a>
								<a href="#">Barangay Clearance</a>
								<a href="#">Sedula</a>
								<a href="#">more...</a>
							</div>
						</li>
					<li><a href="home.php">Home</a></li>
				</ul>
			</ul>
		</header>
	</div>

