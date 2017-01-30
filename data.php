<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "bgdb_dev";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {

    die("Connection failed: " . $conn->connect_error);

  }

//print_r($conn);



//get date start date
$startDate = $_GET['startdate'];

//get ending date
$endingDate = $_GET['endingdate'];

//get promo code
$promocode = $_GET['promo_code'];


$results_array = array();

// Gives you promo code and count for select 2
$sql = "SELECT Distinct promo_code
FROM bgea_ds_transmit_dmag_subs
WHERE promo_code IS NOT NULL AND promo_code <>''
Order BY promo_code ASC";


$results = $conn->query($sql);

$data['aaData'] = Array();

if ($results)
    {

        foreach ($results as $row) {

            $data['aaData'][] = array(
                'id'   => $row['promo_code'],
                'name' => $row['promo_code']
            );
        }
    }

    header('Content-Type: application/json');

    echo json_encode($data);

?>
