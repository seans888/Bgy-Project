<!DOCTYPE html>
<html>
<head>
    <title> <?php echo GLOBAL_PROJECT_NAME;?> - Powered by Cobalt</title>
    <link href="/<?php echo BASE_DIRECTORY;?>/css/<?php echo $_SESSION['master_css'];?>" rel="stylesheet" type="text/css">
    <link href="/<?php echo BASE_DIRECTORY;?>/css/<?php echo $_SESSION['colors_css'];?>" rel="stylesheet" type="text/css">
    <link href="/<?php echo BASE_DIRECTORY;?>/css/<?php echo $_SESSION['fonts_css'];?>" rel="stylesheet" type="text/css">
    <link href="/<?php echo BASE_DIRECTORY;?>/css/<?php echo $_SESSION['override_css'];?>" rel="stylesheet" type="text/css">
	<script src="<?php echo THIRD_PARTY_DIR . 'jquery-3.0.0.min.js'; ?>"></script>
	<script src="<?php echo THIRD_PARTY_DIR . 'jquery/jquery-ui.min.js'; ?>"></script>
    <link rel="stylesheet" href="<?php echo THIRD_PARTY_DIR . 'jquery/jquery-ui.min.css'; ?>">
	<meta http-equiv="content-type" content="text/html; charset=<?php echo MULTI_BYTE_ENCODING; ?>" />
</head>
<body>
