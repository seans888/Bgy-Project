<?php
require 'path.php';
init_cobalt();
require 'subclasses/poa&poi_doc.php';
$obj_doc = new poa&poi_doc;
$obj_doc->auto_doc();