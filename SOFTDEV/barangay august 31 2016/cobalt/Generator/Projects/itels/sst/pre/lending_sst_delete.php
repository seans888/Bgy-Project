<?php
require 'subclasses/lending_sst.php';
$sst = new lending_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;