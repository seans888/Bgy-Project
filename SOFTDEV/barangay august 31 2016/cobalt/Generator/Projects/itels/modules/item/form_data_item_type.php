<?php
require 'components/get_listview_referrer.php';

require 'subclasses/item_type.php';
$dbh_item_type = new item_type;
$dbh_item_type->set_where("item_type_id='" . quote_smart($item_type_id) . "'");
if($result = $dbh_item_type->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

