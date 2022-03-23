<?php

require "config.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $response = array();
    $noRM = $_POST['noRM'];

    $cek = "SELECT * FROM pasien WHERE no_rkm_medis='$noRM'";
    $result = mysqli_fetch_array(mysqli_query($con, $cek));

    if (isset($result)) {
        $response['value'] = 1;
        $response['message'] = 'Login Success';
        echo json_encode($response);
    } else {
        $response['value'] = 0;
        $response['message'] = "Login Failed";
        echo json_encode($response);
    }
}
