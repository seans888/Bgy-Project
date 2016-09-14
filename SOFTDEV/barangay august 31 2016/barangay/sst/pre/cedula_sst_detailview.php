<?php
require 'subclasses/cedula_sst.php';
$sst = new cedula_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;