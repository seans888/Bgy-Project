<?php
require 'subclasses/cedula_sst.php';
$sst = new cedula_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;