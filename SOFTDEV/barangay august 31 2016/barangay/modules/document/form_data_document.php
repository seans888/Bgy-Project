<?php
require 'components/get_listview_referrer.php';

require 'subclasses/document.php';
$dbh_document = new document;
$dbh_document->set_where("document_id='" . quote_smart($document_id) . "'");
if($result = $dbh_document->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date_offered);
    if(count($data) == 3)
    {
        $date_offered_year = $data[0];
        $date_offered_month = $data[1];
        $date_offered_day = $data[2];
    }
}

