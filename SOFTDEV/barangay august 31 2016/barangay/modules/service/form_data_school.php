<?php
require 'components/get_listview_referrer.php';

require 'subclasses/school.php';
$dbh_school = new school;
$dbh_school->set_where("school_id='" . quote_smart($school_id) . "'");
if($result = $dbh_school->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

