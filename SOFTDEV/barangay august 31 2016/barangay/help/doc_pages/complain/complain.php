<?php
require 'path.php';
init_cobalt();
require 'subclasses/complain_doc.php';
$obj_doc = new complain_doc;
$obj_doc->auto_doc();