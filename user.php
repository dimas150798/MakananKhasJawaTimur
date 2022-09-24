<?php
error_reporting(0);
session_start();
if (isset($_SESSION['tipe']))
{
 
   if ($_SESSION['tipe'] == 1)
   {
      include 'edit_kota.php';
   }
   else if ($_SESSION['tipe'] == 0)
   {
       include 'kota.php';
   }
}
?>