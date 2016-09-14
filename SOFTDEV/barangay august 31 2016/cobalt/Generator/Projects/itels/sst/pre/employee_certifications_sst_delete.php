<?php
require 'subclasses/employee_certifications_sst.php';
$sst = new employee_certifications_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;