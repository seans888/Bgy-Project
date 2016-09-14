function validate(){
	var first_name= document.getElementById("first_name").value;
	var last_name= document.getElementById("last_name").value;

	if(document.getElementById("first_name").value==''){
		document.getElementById("first_name").style.boxShadow="0 0 8px #ff0000";

	}
 
	if(document.getElementById("last_name").value==''){
		document.getElementById("last_name").style.boxShadow="0 0 8px #ff0000";

	}

	
	return false;
	
}

