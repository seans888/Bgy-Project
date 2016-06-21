 <?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/service.php';
	
	$dbh_service = new service;
	$dbh_service->execute_query
	("SELECT s.service_name, r.service_requirement FROM service s JOIN requirement r ON s.service_id = r.service_id WHERE is_offered='yes'");
	$result = $dbh_service->result;
	
	$service_requirements = array();
	while($row = $result->fetch_assoc())
	{
		$service_requirements[] = $row;
	}
	
	$dbh_service->execute_query
	("SELECT DISTINCT service_name, service_description FROM service WHERE is_offered='yes'");
	$result = $dbh_service->result;
	
	$services = array();
	while($row = $result->fetch_assoc())
	{
		$services[] = $row;
	}


	
	
?>
<main>
	<section class="body-layout">
			<center><h1>List of Documents</h1></center>
		<table>
			<?php
					echo "<tr>";
					echo "<th>Service Name</th>";
					echo "<th>Service Requirement</th>";
					echo "<th>Serviced Description</th></tr>";
				foreach ($services as $row) {
				extract($row);
					
					echo "<tr>";
					echo "<td>$service_name</td>";
					echo "<td>";
					foreach ($service_requirements as $requirements) {
						if ($requirements['service_name'] == $row['service_name']) {
					
							echo"<li>" .$requirements['service_requirement'] . "</li>";
					
						}
					}
					echo "<td>$service_description</td></tr>";
	
				}
			?>
		</table>
		<br/>
<center><a class="btn" href="request.php">Request</a></center>			

	</section>
</main>

<?php
	require 'footer.php';
?>