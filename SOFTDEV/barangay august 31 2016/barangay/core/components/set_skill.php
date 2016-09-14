<?php

init_var($chosen_skill);


if ($chosen_skill == "")
{
	$html->fields['skill_id']['control_type'] = 'hidden';
}
else
{
	$html->fields['skill_id']['list_settings']['query'] = "SELECT skill.skill_id AS `Queried_skill_id`, skill.skill_name FROM skill WHERE skill.skill_set_id = $chosen_skill ORDER BY skill_name ASC";
}