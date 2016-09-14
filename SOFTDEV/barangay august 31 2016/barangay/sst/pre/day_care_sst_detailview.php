<?php
require 'subclasses/day_care_sst.php';
$sst = new day_care_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;