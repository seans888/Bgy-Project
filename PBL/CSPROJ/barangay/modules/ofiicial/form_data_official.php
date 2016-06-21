<?php
require 'components/get_listview_referrer.php';

require 'subclasses/official.php';
$dbh_official = new official;
$dbh_official->set_where("official_id='" . quote_smart($official_id) . "'");
if($result = $dbh_official->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date_registered);
    if(count($data) == 3)
    {
        $date_registered_year = $data[0];
        $date_registered_month = $data[1];
        $date_registered_day = $data[2];
    }
}

