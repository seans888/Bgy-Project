<?php
require 'components/get_listview_referrer.php';

require 'subclasses/position.php';
$dbh_position = new position;
$dbh_position->set_where("position_id='" . quote_smart($position_id) . "'");
if($result = $dbh_position->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

