<?php
require 'components/get_listview_referrer.php';

require 'subclasses/item.php';
$dbh_item = new item;
$dbh_item->set_where("item_id='" . quote_smart($item_id) . "'");
if($result = $dbh_item->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

