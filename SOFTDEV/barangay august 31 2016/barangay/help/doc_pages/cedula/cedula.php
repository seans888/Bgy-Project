<?php
require 'path.php';
init_cobalt();
require 'subclasses/cedula_doc.php';
$obj_doc = new cedula_doc;
$obj_doc->auto_doc();