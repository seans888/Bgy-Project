<?php
require 'subclasses/health_sst.php';
$sst = new health_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;