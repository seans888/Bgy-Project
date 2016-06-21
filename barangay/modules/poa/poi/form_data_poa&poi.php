<?php
require 'components/get_listview_referrer.php';

require 'subclasses/poa&poi.php';
$dbh_poa&poi = new poa&poi;
$dbh_poa&poi->set_where("poa_poi_id='" . quote_smart($poa_poi_id) . "'");
if($result = $dbh_poa&poi->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

