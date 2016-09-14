<?php
	
?>

<!DOCTYPE html>
<html>
<head>
	<title>eBarangay</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
 	<link href="css/calendar.css" type="text/css" rel="stylesheet" />
	<!--link rel="stylesheet" type="text/css" href="css/style_about.css"/-->
	<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<!--link rel="stylesheet" href="css/w3.css"-->
	<link rel="stylesheet" type="text/css" href="css/<?php echo $stylesheet_link; ?>.css"/>
   	<link rel="stylesheet" type="text/css" href="css/style_about.css"/>  	
   	<link rel="stylesheet" type="text/css" href="css/style_contact.css"/>
   	<link rel="stylesheet" type="text/css" href="css/responsive.css"  media="screen and (max-width: 900px)"/>
    
    <script src="js/jquery-3.1.0.min.js"></script>
    <script src="js/script.js"></script>

</head>

<body class="body" onload="limit();">
	<header class="header1">
		<!--		-->
	<div class="headbar">	
	<a class="linktitle" href="home.php"><img class="logo" src="images/logo1.png"></img>
	<p class="headtitle">eBarangay</p></a>
	<div class="headnav" id="nav" onclick="toggle()">
		<ul class="ulnav" id="ul">
			<a class="navlink" href="home.php"><li class="headlink">Home</li></a>
			<a class="navlink" href="information.php"><li class="headlink">Information</li></a>
			<a class="navlink" href="documents.php"><li class="headlink">Documents</li></a>
			<a class="navlink" href="complain.php"><li class="headlink">Complain</li></a>
			
				
				<div class="dropdown">
  					<button class="dropbtn"><?php echo htmlentities($_SESSION['user'], ENT_COMPAT, MULTI_BYTE_ENCODING);?></button>
  					<div class="dropdown-content">
    					<a href="main.php">Log Out</a>
  					</div>
				</div>
		</ul>
  	</div>
  	</div>

	
	</header>

