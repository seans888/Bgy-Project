<?php
require 'subclasses/poa&poi_sst.php';
$sst = new poa&poi_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;