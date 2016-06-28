<?php
	
	require_once 'subclasses/service.php';
	$dbh_service = new service;
	$dbh_service->execute_query("SELECT bulletin_id,file_document FROM bulletin WHERE category='Main Event' ORDER BY bulletin_id DESC ");
	$result1 = $dbh_service->result;
?>

<!DOCTYPE html>
<html>
<head>
	<title><?php echo $page_title; ?></title>
	
	<!--link rel="stylesheet" type="text/css" href="css/style_about.css"/-->
	<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="css/<?php echo $stylesheet_link; ?>.css"/>
	<link rel="stylesheet" type="text/css" href="css/responsive.css"  media="screen and (max-width: 900px)"/>
    <script src="js/script.js"></script>

</head>

<body>
	<?php
		echo "<div class='headevent' onload='start()'>";
		$fd = 0;
		if($row1 = $result1->fetch_assoc()) {
			$fd++;
			$size = sizeof($row1);
			$num = $fd;
			echo "<a href='showmore.php?b={$row1['bulletin_id']}'><img class='headline' id='headline{$num}' src='../../tmp/{$row1['file_document']}'></a>";
			}
			echo "</div>";		
?>

		<header class="header1">
		<!--	<ul>
				<li class="logout"><font color='white'><b>You are logged in as </font> <font color='red'><?php echo htmlentities($_SESSION['user'], ENT_COMPAT, MULTI_BYTE_ENCODING);?> </font></b>
				<a href="main.php">Log Out</a></li>
			</ul>	-->
			<a class="linktitle" href="main.php"><img class="logo" src="images/logo1.png"></img>
		<p class="headtitle">Barangay System</p></a>
		<div class="headnav" id="nav" onclick="toggle()">
			<ul class="ulnav" id="ul">
				<li class="headlink"><a class="navlink" href="home.php">Home</a></li>
				<li class="headlink"><a class="navlink" href="documents.php">Documents</a></li>
				<li class="headlink"><a class="navlink" href="information.php">Information</a></li>
				<li class="headlink"><a class="navlink" href="about.php">About</a></li>
				<li class="headlink"><a class="navlink" href="contact.php">Contact Us</a></li>
			</ul>
			</div>
		</header>

