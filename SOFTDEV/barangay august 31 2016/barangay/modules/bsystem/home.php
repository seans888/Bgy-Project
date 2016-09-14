<?php
	$page_title='eBarangay';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/bulletin.php';
	
	$dbh_bulletin = new bulletin;
	$dbh_bulletin->execute_query("SELECT bulletin_id, bulletin_name,bulletin_description,file_document FROM bulletin WHERE category in ('news','tourism') ");
	$result = $dbh_bulletin->result;
	$dbh_bulletin1 = new bulletin;
	$dbh_bulletin1->execute_query("SELECT bulletin_id,bulletin_date, bulletin_name,bulletin_description,file_document FROM bulletin WHERE category='Main Event' ORDER BY bulletin_ID DESC ");
	$result1 = $dbh_bulletin1->result;
?>
<main>
<div class="fold-1">
	<?php
		echo "<div class='headevent'>";
		$fd = 0;
		while($row1 = $result1->fetch_assoc()) {
			extract($row1);
			$fd++;
			$size = sizeof($row1);
			$num = $fd;
			if(strlen($bulletin_description) < 100)
					{
						//do nothing
					}
					else
					{
						$bulletin_description = substr($bulletin_description, 0, 150);
						$bulletin_description .= "&hellip;";
						$bulletin_description .= '<br><p><a class="main-news-more" href="showmore.php?b=' . $bulletin_id . '">[Basahin pa]</a></p>';
					}
			echo "<div class='event-slide' id='event-slide-{$num}'>";
			echo "<div class='main-news'>";		
			echo "<h2 class='main-news-title'>$bulletin_name</h2>";
			echo "<p class='main-news-date'>$bulletin_date</p><br/>";
			echo "<p class='main-news-desc'>$bulletin_description</p>";
			echo "</div>";
			echo "<div class='eventmain' id='headline{$num}'>";
			echo "<a class='main-news-link' href='showmore.php?b={$row1['bulletin_id']}'><img class='headline' src='../../tmp/{$row1['file_document']}'></a>";
			echo "</div>";
			echo "</div>";
			}	
			echo "</div>";	
?>
<div class="arrow-prev ar-pr-hover" onclick="plusDivs(-1)"><p class="arrowbtn"><</p></div>
<div class="arrow-next ar-pr-hover" onclick="plusDivs(1)"><p class="arrowbtn">></p></div>

</div>
<div class="fold-2">
	<h3 class="fold-2-head center-obj fold-head">Maki-Balita sa ating Barangay</h3>
	<hr class="hr">
		<div class="bulletin-contents">
			<?php
				$bcount = 0;
				while($row = $result->fetch_assoc()) {
					extract($row);
					$bcount++;
					if(strlen($bulletin_description) < 100)
					{
						//do nothing
					}
					else
					{
						$bulletin_description = substr($bulletin_description, 0, 99);
						$bulletin_description .= "&hellip;";
						$bulletin_description .= '<br><br><p><a href="showmore.php?b=' . $bulletin_id . '">[Basahin pa]</a></p>';
					}
					$bulcount = $bcount;
					echo "<div id='board{$bulcount}' class='bulletin-board'>";
					echo "<div class='descript'>";
					echo "<h4 class='bulletin-title'><span class='b-name'>$bulletin_name</span></h4>";
					echo "<img class='homeimg' src='../../tmp/$file_document' >";
					echo "<p class='proj-descript'>$bulletin_description<br></p>";
					echo "</div>";
					echo "</div>";
				//	echo "<hr/>";
				
				}

			?>
	</div>
	</div>	
<div class="fold-3">
<h3 class="fold-3-head center-obj fold-head">Mga Atraksiyon sa ating Barangay </h3>
<hr class="hr">
<div class="bulletin-contents">
<?php

?>

<?php
$bcount2 = 0;
	$dbh_bulletin2 = new bulletin;
	$dbh_bulletin2->execute_query("SELECT bulletin_id,bulletin_name,bulletin_description,file_document FROM bulletin WHERE category in ('tourism')");
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
<div class="fold-4">
<h3 class="fold-4-head center-obj fold-head">Mga Serbisyo sa ating Barangay</h3>
<hr class="hr">
<div class="service-board">

<ul class="ul-col-1">
	<li class="docreq">		
		<div class="icon">
			<div class="doc-icon"></div>
		</div>
		<div class="service-desc">
			<h3 class="service-header"><a href="documents.php">Mag-Request ng mga Dokumento</a></h3><br>
			<p>Maari nang mag-request online ng mga dokumento tulad ng barangay ID, Barangay Clearance,
				 business permit, cedula at iba pa.</p>	
		</div>
	</li>

	<li class="comreq">		
		<div class="icon">
			<div class="com-icon"></div>
		</div>
		<div class="service-desc">
			<h3 class="service-header"><a href="complain.php">Mag-Sumbong sa Barangay</a></h3><br>
			<p>Mag-Sumbong Online kung may mga hindi kanais-nais na mga pangyayaring naganap o 
				nagaganap sa ating barangay.</p>	
		</div>
	</li>
</ul>

<ul class="ul-col-2">
	<li class="calreq">		
		<div class="icon">
			<div class="cal-icon"></div>
		</div>
		<div class="service-desc">
			<h3 class="service-header"><a href="events.php">Tingnan ang Kalendaryo</a></h3><br>
			<p>Tignan ang kalendaryo at makisali sa mga palaro, fiesta, mga libreng pagamot at iba pang mga kaganapan sa loob ng ating barangay.</p>	
		</div>
	</li>
	<li class="mapreq">		
		<div class="icon">
			<div class="map-icon"></div>
		</div>
		<div class="service-desc">
			<h3 class="service-header"><a href="https://www.google.com.ph/maps/" target="_blank">Tingnan ang Mapa ng Google</a></h3><br>
			<p>Maghanap ng mga lugar gamit ang Google Map.</p>	
		</div>
	</li>			
</ul>
</div>
</div>

<div class="foot-fold">
<h3 class="fold-4-head center-obj fold-head">Tungkol sa ating Barangay </h3>
<hr class="hr">



</div>
</main>

<?php
	require 'footer.php';
?>