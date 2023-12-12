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


<?PHP

$con = mysqli_connect('localhost','root');
mysqli_select_db($con,'old_wheels_contact');

//  <!-- if($con){
//      echo "connection succussful";
//  }else{
//      echo "no connection";
//  } -->


$name= $_POST['name'];
$email= $_POST['email'];
$contact= $_POST['contact'];
$msg= $_POST['msg'];

$sql ="INSERT INTO `contact_details`(`Name`, `Email`, `Contact_Number`, `Message`) VALUES ('$name','$email','$contact','$msg')";
 
// insert in database 
$rs = mysqli_query($con, $sql);

if($rs)
{   
	echo " <section id='first'> <h1>Your Data is Recorded Successfully</h1> <br><br><br>   <a href='index.php'  type='button' class='button'>Continue</a> </section>";

    
}

?>


</body>
</html>