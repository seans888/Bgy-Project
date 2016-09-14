 <?php
	$page_title='Barangay System';
	$stylesheet_link='style';
	
	require 'path.php';
	init_cobalt();
	require 'header1.php';
	
	require_once 'subclasses/document.php';
	
	$dbh_document = new document;
	$dbh_document->execute_query
	("SELECT d.document_name, r.requirement_name FROM document d JOIN requirement r ON d.document_id = r.document_id WHERE is_offered='yes'");
	$result = $dbh_document->result;
	
	$document_requirements = array();
	while($row = $result->fetch_assoc())
	{
		$document_requirements[] = $row;
	}
	
	$dbh_document->execute_query
	("SELECT DISTINCT document_name, document_description FROM document WHERE is_offered='yes'");
	$result = $dbh_document->result;
	
	$documents = array();
	while($row = $result->fetch_assoc())
	{
		$documents[] = $row;
	}


	
	
?>
<main>
	<div class="block-body">
			<h1 class="doc-headings">Listahan ng mga Dokumento</h1><br/><br/>
		<div class="div-list-doc">
			<hr class="hr">
			<center>
			<?php
				foreach ($documents as $row) {
				extract($row);
					
					echo "<ul class='list-of-doc'>";
					echo "<li class='li-doc-head'>$document_name</li>";
					echo "<li class='li-doc-req'>"; 	
					foreach ($document_requirements as $requirements) {
						if ($requirements['document_name'] == $row['document_name']) {
					
							echo"&#8226; " .$requirements['requirement_name'] . "<br/>";
					
						}
					}
					echo "</li>";
					echo "<li class='li-doc-desc'>$document_description</li>";
				
		
					
				if ($document_name == 'Business Permit (New)' && 'Business Permit (Renew)') {	
						echo "<li class='li-doc-btn'><center><a class='doc-href' href='business_permit.php'>Request Business Permit</a></center></li></ul>";	
				}
				else{
					if ($document_name == 'Business Permit (Renew)') {
						
						echo "<li class='li-doc-btn'><center><a class='doc-href' href='business_permit.php'>Request Business Permit</a></center></li></ul>";
							
			
					}
				else{
					if ($document_name == 'Barangay Clearance (New)' ) {
					
						echo "<li class='li-doc-btn'><center><a class='doc-href' href='barangay_clearance.php'>Request Barangay Clearance</center></a></li></ul>";
						
		
					}
				else{
					if ($document_name == 'Barangay Clearance (Renew)') {
					
						echo "<li class='li-doc-btn'><center><a class='doc-href' href='barangay_clearance.php'>Request Barangay Clearance</a></center></li></ul>";
						
		
					}
				else{
					if ($document_name == 'Barangay ID (New)') {
					
						echo "<li class='li-doc-btn'><center><a class='doc-href' href='request.php'>Request Barangay ID</a></center></li></ul>";
						
		
					}
				else{
					if ($document_name == 'Barangay ID (Renew)') {
					
						echo "<li class='li-doc-btn'><center><a class='doc-href' href='request.php'>Request Barangay ID</a></center></li></ul>";
						
		
					}
				else{
					if ($document_name == 'Residence Certificate (Cedula)') {
					
						echo "<li class='li-doc-btn'><center><a class='doc-href' href='cedula.php'>Request Cedula</a></center></li></ul>";
						
		
					}
						
				}		
						
				}			
				
						
				}		
				}
						
				}
				
				
			}
				
		}
					
	?>	
</center>
</div>
		<br/><br/><br/>

	</div>
</main>

<?php
	require 'footer.php';
?>