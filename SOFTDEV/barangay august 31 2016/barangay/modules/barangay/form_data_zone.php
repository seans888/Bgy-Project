<?php
require 'components/get_listview_referrer.php';

require 'subclasses/zone.php';
$dbh_zone = new zone;
$dbh_zone->set_where("zone_id='" . quote_smart($zone_id) . "'");
if($result = $dbh_zone->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

