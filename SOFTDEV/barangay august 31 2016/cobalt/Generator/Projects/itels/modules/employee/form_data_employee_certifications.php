<?php
require 'components/get_listview_referrer.php';

require 'subclasses/employee_certifications.php';
$dbh_employee_certifications = new employee_certifications;
$dbh_employee_certifications->set_where("employee_certification_id='" . quote_smart($employee_certification_id) . "'");
if($result = $dbh_employee_certifications->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

