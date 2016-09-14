<?php

init_var($chosen_city);


if ($chosen_city == "")
{
	$html->fields['barangay_id']['control_type'] = 'hidden';
}
else
{
	$html->fields['barangay_id']['list_settings']['query'] = "SELECT barangay.barangay_id AS `Queried_barangay_id`, barangay.barangay_name FROM barangay WHERE barangay.city_id=$chosen_city ORDER BY barangay_name ASC";
	
}