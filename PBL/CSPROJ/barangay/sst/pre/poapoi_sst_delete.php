<?php
require 'subclasses/poapoi_sst.php';
$sst = new poapoi_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;