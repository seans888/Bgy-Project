<?php
require 'subclasses/business_permit_sst.php';
$sst = new business_permit_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;