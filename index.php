<?php
include 'header.php';
require("connection.php");

$query = $conn->query("select * from jadwal;");
?>


<?php
include 'footer.php';
?>