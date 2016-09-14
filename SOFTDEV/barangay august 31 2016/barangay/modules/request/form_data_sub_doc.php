<?php
require 'components/get_listview_referrer.php';

require 'subclasses/sub_doc.php';
$dbh_sub_doc = new sub_doc;
$dbh_sub_doc->set_where("sub_doc_id='" . quote_smart($sub_doc_id) . "'");
if($result = $dbh_sub_doc->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

