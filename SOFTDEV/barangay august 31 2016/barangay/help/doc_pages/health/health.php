<?php
require 'path.php';
init_cobalt();
require 'subclasses/health_doc.php';
$obj_doc = new health_doc;
$obj_doc->auto_doc();