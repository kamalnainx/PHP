<?php
include_once("db.php");
if (!empty($_POST["id"])) {
    $id = $_POST['id'];
    $query = "select * from modal where brand_id=$id";
    $result = mysqli_query($con, $query);
    if ($result->num_rows > 0) {
        echo '<option value="" name="model">Select Model</option>';
        while ($row = mysqli_fetch_assoc($result)) {
            echo '<option value="' . $row['id'] . '">' . $row['Modal'] . '</option>';
        }
    }
}
