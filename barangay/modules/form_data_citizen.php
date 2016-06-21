<?php
require 'components/get_listview_referrer.php';

require 'subclasses/citizen.php';
$dbh_citizen = new citizen;
$dbh_citizen->set_where("citizen_id='" . quote_smart($citizen_id) . "'");
if($result = $dbh_citizen->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$birth_date);
    if(count($data) == 3)
    {
        $birth_date_year = $data[0];
        $birth_date_month = $data[1];
        $birth_date_day = $data[2];
    }
    $data = explode('-',$date_registered);
    if(count($data) == 3)
    {
        $date_registered_year = $data[0];
        $date_registered_month = $data[1];
        $date_registered_day = $data[2];
    }
}

