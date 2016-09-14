<?php
require 'subclasses/zone_sst.php';
$sst = new zone_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;