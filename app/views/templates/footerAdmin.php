<?php
  $ipaddress = $_SERVER['REMOTE_ADDR']; //ip remote
  $ipaddress2 = $_SERVER['SERVER_ADDR']; //ip server
  $HostName = gethostbyaddr($ipaddress2); 

?>

<div id="footermainPan">
  <div id="footerPan">
    <a href="#"><img src="<?= BASEURL; ?>/images/footer-logo-INDO.jpg" width="186" height="50" border="0" alt="indotaichen" title="indotaichen" class="footerlogo" /></a>
    <ul>
        <li><a href="<?= BASEURL; ?>/ticketlist" style="font-size: 11px;">Ticket List</a> | </li>
        <li><a href="<?= BASEURL; ?>/openticket" style="font-size: 11px;">Open Ticket</a> | </li>
        <li><a href="<?= BASEURL; ?>/emaillist" style="font-size: 11px;">Email List</a> | </li>
        <li><a href="<?= BASEURL; ?>/ipaddress" style="font-size: 11px;">Ip Address</a> | </li>
        <li><a href="<?= BASEURL; ?>/analisadata" style="font-size: 11px;">Analisa Data</a></li>
    </ul>
    <p class="copyright">© All Right Reserved by Dept. Data & Informatika - 2018</p>
    <ul class="templateworld">
      <li><a href="http://www.indotaichen.com/" target="_blank">PT. INDO TAICHEN TEXTILE INDUSTRY</a>Your Ip Address : <?= $ipaddress.$HostName; ?></li>
    </ul>
  </div>
</div>

<script src="<?= BASEURL; ?>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="<?= BASEURL; ?>/js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='<?= BASEURL; ?>/bower_components/moment/min/moment.min.js'></script>
<script src='<?= BASEURL; ?>/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='<?= BASEURL; ?>/js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="<?= BASEURL; ?>/bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="<?= BASEURL; ?>/bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="<?= BASEURL; ?>/js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="<?= BASEURL; ?>/bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="<?= BASEURL; ?>/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="<?= BASEURL; ?>/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="<?= BASEURL; ?>/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="<?= BASEURL; ?>/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="<?= BASEURL; ?>/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="<?= BASEURL; ?>/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="<?= BASEURL; ?>/js/charisma.js"></script>
</body>
</html>