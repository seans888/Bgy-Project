

<!DOCTYPE html>
<html>
<head>
	<title><?php echo $page_title; ?></title>
	
	<link rel="stylesheet" type="text/css" href="css/style_about.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="css/<?php echo $stylesheet_link; ?>.css"/>
</head>

<body>
	<div class="wrapper ">
		<header class="header">
			<img class="logo" src="images/logo1.png">
			<font class="font title">Barangay System</font>
			<ul>
				<center><font color='white'><b><h3>You are logged in as </font> <font color='red'><?php echo htmlentities($_SESSION['user'], ENT_COMPAT, MULTI_BYTE_ENCODING);?><h3> </font></b><center>&nbsp;
        
				<li><a href="main.php">Log Out</a></li>
				<li><a href="contact.php">Contact Us</a></li>
				<li><a href="about.php">About</a></li>
				<ul style="float:left;list-style-type:none;">
				
					<li><a href="information.php">Information</a></li>
					<li><a href="documents.php">Documents</a></li>
						</li>
					<li><a href="home.php">Home</a></li>
				</ul>
			</ul>
		</header>
	</div>

