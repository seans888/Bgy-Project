<?php
require 'subclasses/item_type_sst.php';
$sst = new item_type_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;