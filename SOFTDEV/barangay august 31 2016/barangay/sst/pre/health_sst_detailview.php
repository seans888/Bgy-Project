<?php
require 'subclasses/health_sst.php';
$sst = new health_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;