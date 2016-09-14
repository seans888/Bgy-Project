<?php
require 'subclasses/item_sst.php';
$sst = new item_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;