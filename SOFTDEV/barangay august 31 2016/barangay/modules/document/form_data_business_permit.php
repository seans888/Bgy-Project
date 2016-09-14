<?php
require 'components/get_listview_referrer.php';

require 'subclasses/business_permit.php';
$dbh_business_permit = new business_permit;
$dbh_business_permit->set_where("business_permit_id='" . quote_smart($business_permit_id) . "'");
if($result = $dbh_business_permit->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

