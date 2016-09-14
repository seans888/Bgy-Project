<?php
require 'components/get_listview_referrer.php';

require 'subclasses/skill_set.php';
$dbh_skill_set = new skill_set;
$dbh_skill_set->set_where("skill_set_id='" . quote_smart($skill_set_id) . "'");
if($result = $dbh_skill_set->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

