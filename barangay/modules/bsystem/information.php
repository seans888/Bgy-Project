<?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/service.php';
	
	$dbh_service = new service;
	$dbh_service->execute_query("SELECT bulletin_name,bulletin_description,file_document FROM bulletin WHERE category='education' ");
	$result = $dbh_service->result;
	
	
?>
<main>
	<section class="body-layout">
			<center><h1>Education</h1></center>
			<div class='homeimg'>
			<img class="img-block" src='wash.png'>
			<img class="img-block" src='family.jpg'>
			<img class="img-block" src='good.jpg'></div>
		<!--<table border=3 width='1000px' >-->
		
			<?php
				
				while($row = $result->fetch_assoc()) {
					extract($row);
					/*echo "<br>";
					echo "<tr><td><h2>$bulletin_name</h2><td>";
					echo "<td>$bulletin_description<br></td>";
					echo "<td><img width='500px' height='200px'src='wash.png'></td></tr>";*/
					echo "<div class='home-layout info'>";
					echo "<div class='descript-info'>";
					echo "<h2>$bulletin_name</h2>";
					echo "<p class='proj-descript'>$bulletin_description<br></p>";
					echo "</div>";
					echo "</div>";
				}

			?>
			
		<!--</table>-->	

	</section>


</main>

<?php
	require 'footer.php';
?>