<?php
if ( isset ($_SESSION['userId'])) {
    
}else {
    header('Location: ' . BASEURL . '/login');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>::DIT -  <?= $data['judul']; ?> :</title>

    <link href="<?= BASEURL; ?>/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<?= BASEURL; ?>/css/bootstrap.min.css">

    <script src="<?= BASEURL; ?>/js/jquery.min.js"></script>
    <script src="<?= BASEURL; ?>/js/bootstrap.min.js"></script>

    <!-- The styles -->
    <link id="bs-css" href="<?= BASEURL; ?>/css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="<?= BASEURL; ?>/css/charisma-app.css" rel="stylesheet">
    <link href='<?= BASEURL; ?>/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='<?= BASEURL; ?>/bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/css/jquery.noty.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/css/noty_theme_default.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/css/elfinder.min.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/css/elfinder.theme.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/css/uploadify.css' rel='stylesheet'>
    <link href='<?= BASEURL; ?>/css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="<?= BASEURL; ?>/bower_components/jquery/jquery.min.js"></script>

    <style type="text/css">
        .center_div{
            margin: 0 auto;
            width:60% /* value of your choice which suits your alignment */
        }
        hr { 
            display: block;
            margin-top: 0.5em;
            margin-bottom: 0.5em;
            margin-left: auto;
            margin-right: auto;
            border-style: inset;
            border-width: 0.5px;
            }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 2px;
        }
    </style>
    <link rel="shortcut icon" href="<?= BASEURL; ?>/images/logo_ITTI.ico">

</head>
<body>
<div id="topPan">
    <a href="<?= BASEURL; ?>/Admin" >
        <img src="<?= BASEURL; ?>/images/title2.gif" alt="Sistem Inventory" title="Sistem Inventory" />
    </a>
    <ul>
        <li></li>
        <li><a href="<?= BASEURL; ?>/ticketlist" style="font-size: 10px;">Ticket List</a></li>
        <li><a href="<?= BASEURL; ?>/email" style="font-size: 10px;">Email List</a></li>
        <li><a href="<?= BASEURL; ?>/ipaddress" style="font-size: 10px;">Ip Address</a></li>
        <li><a href="#" style="font-size: 10px;">Data Analysis</a></li> 
        <li><a href="<?= BASEURL; ?>/logout" style="font-size: 10px;">Logout</a></li>
    </ul>
</div>
<div class="col-sm-2 col-lg-2">
	<div class="sidebar-nav">
		<div class="nav-canvas">
            <div class="nav-sm nav nav-stacked">

			</div>
			</li>
			<ul class="nav nav-stacked main-menu">
				<li class="nav-header">ADMIN SITE</li>
					<li><a class="ajax-link" href="index.html"><span style="font-size: 12px;"> Sistem Pakar</span></a>
					<li><a class="ajax-link" href="index.html"><span style="font-size: 12px;"> Update Kategori</span></a>
					<li><a class="ajax-link" href="index.html"><span style="font-size: 12px;"> SPEC</span></a>
					<li><a class="ajax-link" href="index.html"><span style="font-size: 12px;"> Stock</span></a>
					<li><a class="ajax-link" href="index.html"><span style="font-size: 12px;"> Add User</span></a>
				</li>
			</ul>
		</div>
	</div>
</div>