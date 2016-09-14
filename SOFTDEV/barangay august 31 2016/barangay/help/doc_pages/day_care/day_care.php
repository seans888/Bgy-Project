<?php
require 'path.php';
init_cobalt();
require 'subclasses/day_care_doc.php';
$obj_doc = new day_care_doc;
$obj_doc->auto_doc();