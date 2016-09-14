<?php
require 'path.php';
init_cobalt();
require 'subclasses/lending_items_doc.php';
$obj_doc = new lending_items_doc;
$obj_doc->auto_doc();