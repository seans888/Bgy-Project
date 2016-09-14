<?php
require 'components/get_listview_referrer.php';

require 'subclasses/lending_items.php';
$dbh_lending_items = new lending_items;
$dbh_lending_items->set_where("lending_items_id='" . quote_smart($lending_items_id) . "'");
if($result = $dbh_lending_items->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

