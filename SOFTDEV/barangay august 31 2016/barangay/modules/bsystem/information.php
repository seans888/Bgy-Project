<?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/bulletin.php';
	
	$dbh_bulletin = new bulletin;
	$dbh_bulletin->execute_query("SELECT bulletin_id,bulletin_name,bulletin_description,file_document FROM bulletin WHERE category in ('information','health','education')  ");
	$result = $dbh_bulletin->result;
	
	
?>
<main>
<div class="block-body">
<div class="fold-2">
	<h3 class="fold-2-head center-obj fold-head">Mga lugar sa Ating Barangay</h3>
	<hr class="hr"/>
<div class="map-block center-obj">
	<div class="evac-center center-obj">
	<h3 class="evac-h3 center-obj">Evacuation Center</h3></div>
	<div class="google-map">
		<a class="navlink" href="https://www.google.com.ph/maps/" target="_blank"><h3 class="google-h3 center-obj">Mag-Search sa Google Map</h3></a></div>
</div>
</div>

<div class="fold-3">
	<h3 class="fold-5-head center-obj fold-head">Suriin ang iyong Kalusugan</h3>
	<hr class="hr"/>
<div class="health-fold center-obj">
<?php
$bcount2 = 0;
	$dbh_bulletin2 = new bulletin;
	$dbh_bulletin2->execute_query("SELECT bulletin_id,bulletin_name,bulletin_description,file_document FROM bulletin WHERE category in ('health')");
	$result2 = $dbh_bulletin2->result;
				while($row2 = $result2->fetch_assoc()) {
					extract($row2);
					$bcount2++;
					if(strlen($bulletin_description) < 100)
					{
						//do nothing
					}
					else
					{
						$bulletin_description = substr($bulletin_description, 0, 99);
						$bulletin_description .= "&hellip;";
						$bulletin_description .= '<p><a href="showmore.php?b=' . $bulletin_id . '">[Basahin pa]</a></p>';
					}

					$bulcount2 = $bcount2;
					echo "<div id='board{$bulcount2}' class='bulletin-board'>";
					echo "<div class='descript'>";
					echo "<h4 class='bulletin-title'>$bulletin_name</h4>";
					echo "<img class='homeimg' src='../../tmp/$file_document' >";
					echo "<p class='proj-descript'>$bulletin_description<br></p>";
					echo "</div>";
					echo "</div>";
				
				}

			?>
</div>
</div>

<div class="fold-2">
	<h3 class="fold-2-head center-obj fold-head">Edukasiyon sa ating Barangay</h3>
	<hr class="hr"/>

</div>

<div class="foot-fold">
	<h3 class="fold-4-head center-obj fold-head">Para sa Higit na Impormasiyon</h3>
	<hr class="hr"/>

</div>
			
		<!--<table border=3 width='1000px' >-->
		
			<?php
			/*
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
					echo "<h2>$bulletin_name</h2>";
					echo "<img class='homeimg' src='../../tmp/$file_document' >";
					echo "<p class='proj-descript'>$bulletin_description<br></p>";
					echo "</div>";
					echo "</div>";
				
				}
*/
			?>

			<?php
				/*

				while($row = $result->fetch_assoc()) {
					extract($row);
					/*echo "<br>";
					echo "<tr><td><h2>$bulletin_name</h2><td>";
					echo "<td>$bulletin_description<br></td>";
					echo "<td><img width='500px' height='200px'src='wash.png'></td></tr>";
					echo "<div class='home-layout info'>";
					echo "<div class='descript-info'>";
					echo "<h2>$bulletin_name</h2>";
					echo "<p class='proj-descript'>$bulletin_description<br></p>";
					echo "</div>";
					echo "</div>";
				}
*/
			?>
			
		<!--</table>-->	

	</div>


</main>

<?php
	require 'footer.php';
?>