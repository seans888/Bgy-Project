<?php
require 'subclasses/lending_items_sst.php';
$sst = new lending_items_sst;
$sst->auto_test();
$sst_script = $sst->script;