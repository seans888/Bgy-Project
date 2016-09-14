<?php
require 'components/get_listview_referrer.php';

require 'subclasses/business_permit_fee.php';
$dbh_business_permit_fee = new business_permit_fee;
$dbh_business_permit_fee->set_where("business_permit_fee_id='" . quote_smart($business_permit_fee_id) . "'");
if($result = $dbh_business_permit_fee->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

