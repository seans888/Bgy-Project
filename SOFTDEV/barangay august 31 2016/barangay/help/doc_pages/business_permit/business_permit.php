<?php
require 'path.php';
init_cobalt();
require 'subclasses/business_permit_doc.php';
$obj_doc = new business_permit_doc;
$obj_doc->auto_doc();