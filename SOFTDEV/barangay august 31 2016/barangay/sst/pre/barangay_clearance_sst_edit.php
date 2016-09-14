<?php
require 'subclasses/barangay_clearance_sst.php';
$sst = new barangay_clearance_sst;
$sst->auto_test();
$sst_script = $sst->script;