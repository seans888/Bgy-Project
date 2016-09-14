<?php
require 'components/get_listview_referrer.php';

require 'subclasses/fee.php';
$dbh_fee = new fee;
$dbh_fee->set_where("fee_id='" . quote_smart($fee_id) . "'");
if($result = $dbh_fee->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

