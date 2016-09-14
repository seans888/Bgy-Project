<?php
require 'subclasses/sub_doc_sst.php';
$sst = new sub_doc_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;