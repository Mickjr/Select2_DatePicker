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


//current Date
$currDate = date("Y-m-d");

//Last Month's Date(4 weeks ago)
$lastMonth = date("Y-m-d", strtotime("-4 week"));


// Empty Array for results

$myreturn_value = array();

//get date start date
if ( isset($_GET['startdate'])){

    $startDate = $_GET['startdate'];

} else {

    $startDate = $currDate;

}


//get ending date
if ( isset($_GET['endingdate'])){

    $endingDate = $_GET['endingdate'];

} else {

    $endingDate = $lastMonth;

}


//get promo code
if ( isset($_GET['promo_code'])){

    $promoCode = $_GET['promo_code'];

} else {

    $promoCode = 'Promo10';
}


// Gives you promo code count
$sql = "SELECT count(*) as count
FROM bgea_ds_transmit_dmag_subs
WHERE STR_TO_DATE(date_created, '%Y-%m-%d') BETWEEN '".$startDate."'
AND '".$endingDate."' AND promo_code IS NOT NULL AND promo_code <>'' AND promo_code = '".$promoCode."'";


$results = $conn->query($sql);


$p = array();

while($row = $results->fetch_assoc()) {

    $myreturn_value['count'] = $row['count'];

}


header('Content-Type: application/json');

echo json_encode($myreturn_value);

?>
