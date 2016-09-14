<?php
require 'subclasses/zone_sst.php';
$sst = new zone_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;