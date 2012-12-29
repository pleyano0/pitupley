<?php

include('include/connect.php');
$pdo = connect('localhost', 'root', 'toor', 'pitupley');
$consulta = query($pdo, "select 2+2 as suma");
echo $consulta[0][0];

?>