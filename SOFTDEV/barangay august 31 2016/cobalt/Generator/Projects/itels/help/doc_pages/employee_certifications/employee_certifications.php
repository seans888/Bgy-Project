<?php
require 'path.php';
init_cobalt();
require 'subclasses/employee_certifications_doc.php';
$obj_doc = new employee_certifications_doc;
$obj_doc->auto_doc();