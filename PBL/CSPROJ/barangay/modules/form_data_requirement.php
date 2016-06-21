<?php
require 'components/get_listview_referrer.php';

require 'subclasses/requirement.php';
$dbh_requirement = new requirement;
$dbh_requirement->set_where("requirement_id='" . quote_smart($requirement_id) . "'");
if($result = $dbh_requirement->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date_served);
    if(count($data) == 3)
    {
        $date_served_year = $data[0];
        $date_served_month = $data[1];
        $date_served_day = $data[2];
    }
    $data = explode('-',$date_request);
    if(count($data) == 3)
    {
        $date_request_year = $data[0];
        $date_request_month = $data[1];
        $date_request_day = $data[2];
    }
}

