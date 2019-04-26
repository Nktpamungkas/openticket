<?php
    $ipaddress = $_SERVER['REMOTE_ADDR'];
?>
<div id="footermainPan">
  <div id="footerPan">
    <a href="#"><img src="<?= BASEURL; ?>/images/footer-logo-INDO.jpg" width="186" height="50" border="0" class="footerlogo" /></a>
    <ul>
      <li></li>
      <li></li>
      <li></li>
      <li><a href="<?= BASEURL; ?>/login">Home</a> |</li>
      <li><a href="<?= BASEURL; ?>/openticket">Open Ticket</a> | </li>
      <li><a href="<?= BASEURL; ?>/email">Email List</a></li>
    </ul>
    <p class="copyright">© All Right Reserved by Dept. Data & Informatika - 2018</p>
    <ul class="templateworld">
      <li><a href="http://www.indotaichen.com/" target="_blank">PT. INDO TAICHEN TEXTILE INDUSTRY</a>Your Ip Address : <?= $ipaddress; ?></li>
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