<?php
require 'subclasses/position_sst.php';
$sst = new position_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;