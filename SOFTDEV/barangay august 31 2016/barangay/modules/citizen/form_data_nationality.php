<?php
require 'components/get_listview_referrer.php';

require 'subclasses/nationality.php';
$dbh_nationality = new nationality;
$dbh_nationality->set_where("nationality_id='" . quote_smart($nationality_id) . "'");
if($result = $dbh_nationality->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

