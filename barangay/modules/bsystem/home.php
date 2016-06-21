<?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/service.php';
	
	$dbh_service = new service;
	$dbh_service->execute_query("SELECT bulletin_name,bulletin_description,file_document FROM bulletin WHERE category='information' ");
	$result = $dbh_service->result;
	
	
?>
<main>
	<section class="body-layout">
			<center><font size='25px'>EVENTS</font></center>
			<center><div class="main-headline">
			<img width='800px' class="headline" src='event.jpg'>
			</div></center><br><br>
			
		<img class='homeimg' src='feeding.jpg'>	
		
		
		<img class='homeimg' src='bakuna.jpg'>	
		
		<img class='homeimg' src='liga.jpg'>	
		<!--<table border=3 width='1000px' >-->
			<?php
				while($row = $result->fetch_assoc()) {
					extract($row);
					echo "<div class='home-layout home'>";
					echo "<div class='descript'>";
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