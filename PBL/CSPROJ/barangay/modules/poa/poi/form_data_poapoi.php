<?php
require 'components/get_listview_referrer.php';

require 'subclasses/poapoi.php';
$dbh_poapoi = new poapoi;
$dbh_poapoi->set_where("poa_poi_id='" . quote_smart($poa_poi_id) . "'");
if($result = $dbh_poapoi->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

