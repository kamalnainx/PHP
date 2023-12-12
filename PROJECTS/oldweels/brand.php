<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <?php

        #$conn = mysqli_connect("localhost", "root", "", "test") or die("connection failed");

        $con = mysqli_connect('localhost','root');
        mysqli_select_db($con,'carsell_data');


        
        // $name= $_POST['name'];
        // $email= $_POST['email'];
        // $contact= $_POST['contact'];
        // $msg= $_POST['msg'];

        $sql ="Select brand FROM brandname2";
        
        // get from database
        $result = $con->query($sql);

        $brand= $_GET['brand'];

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc($result)) {
                $str .= "<option value= ''>{$row['brand']}</option>";
            }
          }

    echo $str;
        // // insert in database 
        // $rs = mysqli_query($con, $sql);

        // if($rs)
        // {   
        //     echo "Contact Records Inserted";
            
        // }





        echo "brand" . $row["brand"];



        $sql = "SELECT * FROM  brandname2";

        $query = mysqli_query($conn, $sql) or die("Query Unseccessful");

        $str = "";

        while($row = mysqli_fetch_assoc($query)){
            $str .= "<option value= ''>{$row['brand']}</option>";
        }

        echo $str;

    ?>
</body>
</html>
