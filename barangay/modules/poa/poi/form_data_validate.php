<?php
require 'components/get_listview_referrer.php';

require 'subclasses/validate.php';
$dbh_validate = new validate;
$dbh_validate->set_where("poa_poi_id='" . quote_smart($poa_poi_id) . "'");
if($result = $dbh_validate->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

