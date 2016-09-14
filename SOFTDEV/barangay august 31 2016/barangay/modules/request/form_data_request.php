<?php
require 'components/get_listview_referrer.php';

require 'subclasses/request.php';
$dbh_request = new request;
$dbh_request->set_where("request_id='" . quote_smart($request_id) . "'");
if($result = $dbh_request->make_query()->result)
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
    $data = explode('-',$date_filed);
    if(count($data) == 3)
    {
        $date_filed_year = $data[0];
        $date_filed_month = $data[1];
        $date_filed_day = $data[2];
    }
}

require_once 'subclasses/sub_doc.php';
$dbh_request = new sub_doc;
$dbh_request->set_fields('document_id, requirement_id, requirement_doc, status');
$dbh_request->set_where("request_id='" . quote_smart($request_id) . "'");
if($result = $dbh_request->make_query()->result)
{
    $num_sub_doc = $dbh_request->num_rows;
    for($a=0; $a<$num_sub_doc; $a++)
    {
        $data = $result->fetch_row();
        $cf_sub_doc_document_id[$a] = $data[0];
        $cf_sub_doc_requirement_id[$a] = $data[1];
        $cf_sub_doc_requirement_doc[$a] = $data[2];
        $cf_sub_doc_status[$a] = $data[3];
    }
}

