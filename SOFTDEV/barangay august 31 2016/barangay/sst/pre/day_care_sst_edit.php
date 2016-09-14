<?php
require 'subclasses/day_care_sst.php';
$sst = new day_care_sst;
$sst->auto_test();
$sst_script = $sst->script;