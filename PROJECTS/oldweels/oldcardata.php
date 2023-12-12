<?php
include_once("db.php");
include_once("response.php");
?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jquery cdn -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style>

        .btn{
            display: inline-block;
            margin-top: 1rem;
            padding:.8rem 3rem;
            background: yellow;
            color:var(--black);
            cursor: pointer;
            font-size: 1.7rem;
            border-radius: .5rem;
            font-weight: 500;
            text-align: center;
        }

       

        .datacol{
            margin-top: 200px;
            align-content: center;
        }

        .sec{
            background-color: rgb(246, 224, 60);
            margin-left: 150px;
            margin-right: 150px;
            height: 350px;
            margin-left: 300px;
            margin-right: 300px;
        }
    
    </style>
    <title>Dropdown</title>
</head>

<body>
<section class="sec">
<form action="getvalue.php" method="post" class="datacol">
    <div class="container col-md-4">
        <div class="form-group py-2">

            <label for="country">Brand</label>
            <select class="form-select" id="country" name="brand" required>
                <option value=""> Select Brand</option>
                <?php

                $query = "select * from brand";
                // $query = mysqli_query($con, $qr);
                $result = $con->query($query);
                if ($result->num_rows > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {

                ?>
                        <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                <?php
                    }
                }

                ?>

            </select>
        
            <label for="country" > Model</label>
            <select class="form-select" id="model" name="model" required>
                <option value="" >Select Model</option>

            </select>
        
            
            <label for="country" > Contact Number</label>
           
            <div>
           
                                
                <input type="tel" placeholder="Contact Number" class="box" name="contact" pattern='[0-9]{8,11}' name="contact" required>
                <br>
                <input type="submit" value="Submit" class="btn">
            
            </div>
<!-- 
            <div>
            <input type="tel" placeholder="Contact Number" class="box" name="contact" pattern='[0-9]{8,11}'>
                <input type="tel" name="" id="">
            </div> -->


        </div>
    </div>
    </form>
</section>
    <div class="container">
        <div class="row">
            <div class="col-md-12 pt-4">
                <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1190033123418031" crossorigin="anonymous"></script>
                <!-- live_demo_page -->
                <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-1190033123418031" data-ad-slot="5335471635" data-ad-format="auto" data-full-width-responsive="true"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
            </div>
        </div>
    </div>


    <script>
        $(document).ready(function() {
            $("#country").on('change', function() {
                var brandid = $(this).val();

                $.ajax({
                    method: "POST",
                    url: "response.php",
                    data: {
                        id: brandid
                    },
                    datatype: "html",
                    success: function(data) {
                        $("#model").html(data);
                        $("#city").html('<option value="">Select city</option');

                    }
                });
            });
            $("#model").on('change', function() {
                var modelid = $(this).val();
                $.ajax({
                    method: "POST",
                    url: "response.php",
                    data: {
                        sid: modelid
                    },
                    datatype: "html",
                    success: function(data) {
                        $("#city").html(data);

                    }

                });
            });
        });
    </script>

</body>

</html>