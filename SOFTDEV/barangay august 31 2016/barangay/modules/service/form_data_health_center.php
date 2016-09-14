<?php
require 'components/get_listview_referrer.php';

require 'subclasses/health_center.php';
$dbh_health_center = new health_center;
$dbh_health_center->set_where("heath_center_id='" . quote_smart($heath_center_id) . "'");
if($result = $dbh_health_center->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

