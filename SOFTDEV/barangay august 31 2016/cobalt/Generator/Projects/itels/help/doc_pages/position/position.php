<?php
require 'path.php';
init_cobalt();
require 'subclasses/position_doc.php';
$obj_doc = new position_doc;
$obj_doc->auto_doc();