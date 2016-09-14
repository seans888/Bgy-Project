<?php
require 'path.php';
init_cobalt();
require 'subclasses/item_type_doc.php';
$obj_doc = new item_type_doc;
$obj_doc->auto_doc();