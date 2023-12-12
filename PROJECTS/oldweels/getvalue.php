<?php
include_once("db.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recorded Successfully</title>

    <style>
        #first{
            background-color: yellow; 
            height: 440px;
            margin: 100px;
            padding-top: 70px;
            text-align: center;
        }
        h1{
            font-size: 50px;
        }

        .button{
            background-color: #c3c34f;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 35px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
</head>
<body>
   
    <?php
   
    
    $brand= $_POST['brand'];
    $model= $_POST['model'];
    $contact= $_POST['contact'];

    $sql ="INSERT INTO `collectdata`(`brand`, `model`, `contact`) VALUES ('$brand','$model','$contact')";
    
     
    // insert in database 
    $rs = mysqli_query($con, $sql);
    
    if($rs)
    {
        // echo "Recorded Successfully";
        echo " <section id='first'> <h1>Your Data is Recorded Successfully</h1> <br> <h2>Our Executive Will Contact You Shortly!!! </h2> <br><br><br>   <a href='index.php'  type='button' class='button'>Continue</a> </section>";
        
    }
   
?>


</body>
</html>