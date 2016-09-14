<?php
require 'path.php';
init_cobalt();
require 'subclasses/sub_doc_doc.php';
$obj_doc = new sub_doc_doc;
$obj_doc->auto_doc();