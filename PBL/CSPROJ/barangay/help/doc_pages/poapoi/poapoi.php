<?php
require 'path.php';
init_cobalt();
require 'subclasses/poapoi_doc.php';
$obj_doc = new poapoi_doc;
$obj_doc->auto_doc();