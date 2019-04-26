<?php
if ( !session_id() ) session_start();

require_once '../app/init.php'; //memanggil semua file yang kita butuhkan, nama tekniknya bootstraping.

$app = new App; //menjalankan Class App
