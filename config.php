<?php

define('HOST', 'localhost');
define('USER', 'client');
define('PASS', 'kuntila5');
define('DB', 'sik');

$conn = mysqli_connect(HOST, USER, PASS, DB,) or die('Database Not Connected');
