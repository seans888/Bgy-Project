<?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/service.php';
	
	$dbh_service = new service;
	$dbh_service->execute_query("SELECT bulletin_id, bulletin_name,bulletin_description,file_document FROM bulletin WHERE category='information' ");
	$result = $dbh_service->result;

	$dbh_service->execute_query("SELECT bulletin_id,file_document FROM bulletin WHERE category='Main Event' ORDER BY bulletin_id DESC ");
	$result1 = $dbh_service->result;
?>
<main>

<div class="block-body">
			
			
		<!--<table border=3 width='1000px' >-->
			<?php
				while($row = $result->fetch_assoc()) {
					extract($row);
					
					if(strlen($bulletin_description) < 100)
					{
						//do nothing
					}
					else
					{
						$bulletin_description = substr($bulletin_description, 0, 99);
						$bulletin_description .= "&hellip;";
						$bulletin_description .= '<p><a href="showmore.php?b=' . $bulletin_id . '">[Show more]</a></p>';
					}
			
					echo "<div class='home-layout home'>";
					echo "<div class='descript'>";
					echo "<h4 class='bulletin-title'>$bulletin_name</h4>";
					echo "<img class='homeimg' src='../../tmp/$file_document' >";
					echo "<p class='proj-descript'>$bulletin_description<br></p>";
					echo "</div>";
					echo "</div>";
					echo "<hr/>";
				
				}

			?>
			
		<!--</table>-->	

	</div>


</main>

<?php
	require 'footer.php';
?>