<?php

init_var($chosen_document);


if ($chosen_document == "")
{
	$html->fields['requirement_id']['control_type'] = 'hidden';

}
else
{
	$html->fields['requirement_id']['list_settings']['query'] = "SELECT requirement.requirement_id AS `Queried_requirement_id`, requirement.requirement_name FROM requirement WHERE requirement.document_id = $chosen_document ORDER BY requirement_name ASC";
		
}