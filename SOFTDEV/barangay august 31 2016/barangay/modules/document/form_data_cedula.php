<?php
require 'components/get_listview_referrer.php';

require 'subclasses/cedula.php';
$dbh_cedula = new cedula;
$dbh_cedula->set_where("cedula_id='" . quote_smart($cedula_id) . "'");
if($result = $dbh_cedula->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

