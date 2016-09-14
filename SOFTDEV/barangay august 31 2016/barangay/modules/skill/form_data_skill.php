<?php
require 'components/get_listview_referrer.php';

require 'subclasses/skill.php';
$dbh_skill = new skill;
$dbh_skill->set_where("skill_id='" . quote_smart($skill_id) . "'");
if($result = $dbh_skill->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

