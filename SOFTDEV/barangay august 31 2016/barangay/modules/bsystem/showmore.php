<?php

	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/bulletin.php';
	
	$dbh_bulletin = new bulletin;
	$dbh_bulletin->execute_query("SELECT bulletin_name,bulletin_description,file_document FROM bulletin WHERE bulletin_id = '$_GET[b]'");
	$result = $dbh_bulletin->result;

?>
<main>

<div class="fold-body">
			<div class="bulletin-contents">
			<?php
			
				while($row = $result->fetch_assoc()) {
					extract($row);
			
					echo "<h3 class='fold-complain-head'>$bulletin_name</h3><br/>";
					echo "<hr class='hr'/>";
					echo "<div class='divimg'><img class='showimg' src='../../tmp/$file_document'/></div><br><br><br>";
					echo "<p>$bulletin_description<br></p>";
					
				}

			?>
			
		<!--</table>-->	
	</div>

	</div>


</main>

<?php
	require 'footer.php';
?>