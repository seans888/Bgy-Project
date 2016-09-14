<?php
require 'components/get_listview_referrer.php';

require 'subclasses/health.php';
$dbh_health = new health;
$dbh_health->set_where("health_id='" . quote_smart($health_id) . "'");
if($result = $dbh_health->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

