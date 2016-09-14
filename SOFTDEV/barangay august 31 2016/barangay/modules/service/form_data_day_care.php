<?php
require 'components/get_listview_referrer.php';

require 'subclasses/day_care.php';
$dbh_day_care = new day_care;
$dbh_day_care->set_where("day_care_id='" . quote_smart($day_care_id) . "'");
if($result = $dbh_day_care->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$time_in);
    if(count($data) == 3)
    {
        $time_in_year = $data[0];
        $time_in_month = $data[1];
        $time_in_day = $data[2];
    }
    $data = explode('-',$time_out);
    if(count($data) == 3)
    {
        $time_out_year = $data[0];
        $time_out_month = $data[1];
        $time_out_day = $data[2];
    }
}

