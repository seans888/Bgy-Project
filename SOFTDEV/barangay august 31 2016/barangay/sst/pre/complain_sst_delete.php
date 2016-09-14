<?php
require 'subclasses/complain_sst.php';
$sst = new complain_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;