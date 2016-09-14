<?php
require 'path.php';
init_cobalt();
require 'subclasses/zone_doc.php';
$obj_doc = new zone_doc;
$obj_doc->auto_doc();