<?php
require 'components/get_listview_referrer.php';

require 'subclasses/barangay_clearance.php';
$dbh_barangay_clearance = new barangay_clearance;
$dbh_barangay_clearance->set_where("barangay_clearance_id='" . quote_smart($barangay_clearance_id) . "'");
if($result = $dbh_barangay_clearance->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

