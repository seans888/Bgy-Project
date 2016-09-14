<?php
require 'path.php';
init_cobalt();
require 'subclasses/lending_doc.php';
$obj_doc = new lending_doc;
$obj_doc->auto_doc();