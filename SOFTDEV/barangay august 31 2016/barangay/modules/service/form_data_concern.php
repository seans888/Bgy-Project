<?php
require 'components/get_listview_referrer.php';

require 'subclasses/concern.php';
$dbh_concern = new concern;
$dbh_concern->set_where("concern_id='" . quote_smart($concern_id) . "'");
if($result = $dbh_concern->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date_filed);
    if(count($data) == 3)
    {
        $date_filed_year = $data[0];
        $date_filed_month = $data[1];
        $date_filed_day = $data[2];
    }
}

