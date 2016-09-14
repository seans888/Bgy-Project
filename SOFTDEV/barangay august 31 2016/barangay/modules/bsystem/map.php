<?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
		
	require 'path.php';
	init_cobalt();
	require 'header1.php';
?>
<!DOCTYPE html>
<html>
<head>
<script
src="https://maps.googleapis.com/maps/api/js?sensor=false&callback=initMap">
</script>

<script>
var myCenter=new google.maps.LatLng(14.5310,121.0215);
var marker;

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:50,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  animation:google.maps.Animation.BOUNCE
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>

<body>
<center><div id="googleMap" style="width:500px;height:380px;"></div></center>
</body>
</html>

<?php
	require 'footer.php';
?>