<?php include('server.php') ?>


<?php 
    session_start();
    // if (!isset($_SESSION['username'])) {
    //     $_SESSION['msg'] = "You must log in first";
    //     header('location: login.php');
    // }
    if (isset($_GET['logout'])) {
        session_destroy();
        unset($_SESSION['username']);
        header("location: login.php");
    }  
    
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

     <!-- Login Style -->
     <!-- <link rel="stylesheet" type="text/css" href="style2.css"> -->

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

   
    <!-- select menu css -->
    <link rel="stylesheet" href="css/selectmenu.css">
    <title>Old Wheels</title>

</head>

<body>

    <!-- Header Section -->

    <header class="header">

        <div id="menu-btn" class="fas fa-bars"></div>

        <a href="#" class="logo"> <span>old</span> Wheels </a>

        <nav class="navbar">
            <a href="#home">home</a>
            <a href="#sell">Sell</a>
            <a href="#scooter">Two-Wheelers</a>
            <a href="#vehicles">four-wheelers</a>
            <a href="#services">services</a>
            <a href="#reviews">reviews</a>
            <a href="#contact">contact</a>
        </nav>

        <?php  if (isset($_SESSION['username'])) : ?>
    	<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
        <div id="login-btn">
            <a href="index.php?logout='1'" class="btn" >Logout</a>
            <i class="far fa-user"></i>
        </div>
    	
    <?php endif ?>

        <div id="login-btn">
            <a href="login.php?logout='0'" class="btn" >Login</a>
            <i class="far fa-user"></i>
        </div>

    </header>


    <!-- Login Form -->

    <div class="content">
  	<!-- notification message -->
  	<?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php 
          	echo $_SESSION['success']; 
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php endif ?>

    <!-- logged in user information -->
    <?php  if (isset($_SESSION['username'])) : ?>
    	<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
    	<p> <a href="index.php?logout='1'" style="color: red;">logout</a> </p>
    <?php endif ?>
</div>

<!-- Original -->

     <div class="login-form-container">

        <span id="close-login-form" class="fas fa-times"></span>

        <!-- <form action="login.php" method='POST'>
            <h3>user login</h3>
            <input type="email" placeholder="Email" class="box" name="email">
            <input type="password" placeholder="Password" class="box" name="pass">
            <p> Forget your Password <a href="#">click here</a> </p>
            <a href="login.php" type="submit" class="btn">Login</a>
            <input type="submit" value="Login" class="btn">
            <p>or login with</p>
            <div class="buttons">
                <a href="https://www.google.com/" class="btn"> google </a>
                <a href="https://www.facebook.com/" class="btn"> facebook </a>
            </div>
            <p> don't have an account <a href="register.html">create one</a> </p>
        </form> -->

    </div>

   

    <section class="home" id="home">

        <h3 data-speed="-2" class="home-parallax">find your Vehicle</h3>

        <img data-speed="5" class="home-parallax" src="image/home-hd-2.png" alt="">

        <a data-speed="7" href="#vehicles" class="btn home-parallax">explore cars</a>

    </section>

    <br>
    <br>

    <section id="old-vehicles">
        <br>
        <br>
        <br>
    </section>



    <!-- Adding Old Vehice Section -->

    <section class="old-vehicles" id="sell">
        <div class="old">

            <h1 id="ul">Buy and Sell An Old Car</h1>
            <br>

            <section align=left>
                <p>If you want to buy an old car you should check these points: </p>

                <ul>
                    <li>Check the Car Condition.</li>
                    <li>Maintenance Records.</li>
                    <li>Check Registration Certificate.</li>
                    <li>Car Insurance.</li>
                    <li>Number of Owners</li>
                </ul>
            </section>


            <a href='oldcardata.php' type='button' class='btn' id='ul'>Continue</a>
        </div>
    </section>

    <!-- Icons Section -->

    <section class="icons-container">

        <div class="icons">
            <i class="fas fa-home"></i>
            <div class="content">
                <h3>150+</h3>
                <p>branches</p>
            </div>
        </div>

        <div class="icons">
            <i class="fas fa-car"></i>
            <div class="content">
                <h3>4770+</h3>
                <p>cars sold</p>
            </div>
        </div>

        <div class="icons">
            <i class="fas fa-users"></i>
            <div class="content">
                <h3>4200+</h3>
                <p>happy clients</p>
            </div>
        </div>

        <div class="icons">
            <i class="fas fa-car"></i>
            <div class="content">
                <h3>1500+</h3>
                <p>news cars</p>
            </div>
        </div>

    </section>

    <!-- Popular Scooters -->

    <section class="vehicles" id="scooter">

        <h1 class="heading"> popular <span>scooters</span> </h1>

        <div class="swiper vehicles-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide box">
                    <img src="image/bikes/scooter3.png" alt="">
                    <div class="content">
                        <h3>Maestro Edge 125</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs. 0.79 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2023
                            <span class="fas fa-circle"></span> Petrol

                        </p>
                        <a href="https://www.heromotocorp.com/en-in/scooters/maestro-edge-125.html" target="_blank" class="btn">check out</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/bikes/scooter2.png" alt="">
                    <div class="content">
                        <h3>N Torq</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs. 1.04 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2023
                            <span class="fas fa-circle"></span> Petrol

                        </p>
                        <a href="https://www.tvsmotor.com/tvs-ntorq" target="_blank" class="btn">check out</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/bikes/suzuki gixxer.png" alt="">
                    <div class="content">
                        <h3>Access 125</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs. 0.79 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2023
                            <span class="fas fa-circle"></span> Petrol

                        </p>
                        <a href="https://www.suzukimotorcycle.co.in/product-details/all-new-access-125-bluetooth-enabled" target="_blank" class="btn">check out</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/bikes/activa.png" alt="">
                    <div class="content">
                        <h3>Activa 125</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs. 0.79 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2023
                            <span class="fas fa-circle"></span> Petrol

                        </p>
                        <a href="https://www.honda2wheelersindia.com/activa125-BS-VI" target="_blank" class="btn">check out</a>
                    </div>
                </div>



            </div>

            <div class="swiper-pagination"></div>

        </div>

    </section>



    <!-- Popular Bikes -->

    <section class="vehicles" id="bikes">

        <h1 class="heading"> popular <span>bikes</span> </h1>

        <div class="swiper vehicles-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide box">
                    <img src="image/bikes/bike.png" alt="pulsar ns 160">
                    <div class="content">
                        <h3>Pulsar NS 160</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs.1.37 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2023
                            <span class="fas fa-circle"></span> Petrol

                        </p>
                        <a href="https://www.bajajauto.com/bikes/pulsar/pulsar-ns160" target="_blank" class="btn">check out</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/bikes/bike2.png" alt="">
                    <div class="content">
                        <h3>Duke</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs.2.89 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2023
                            <span class="fas fa-circle"></span> Petrol
                        </p>
                        <a href="https://www.ktmindia.com/ktm-bikes/naked-bike/ktm-125-duke" target="_blank" class="btn">check out</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/bikes/ktm.png" alt="">
                    <div class="content">
                        <h3>KTM RC</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs.3.07 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2023
                            <span class="fas fa-circle"></span> Petrol

                        </p>
                        <a href="https://www.ktmindia.com/ktm-bikes/supersport/ktm-rc-390" target="_blank" class="btn">check out</a>
                    </div>
                </div>


            </div>

            <div class="swiper-pagination"></div>

        </div>

    </section>



    <!-- Popular Car -->

    <section class="vehicles" id="vehicles">

        <h1 class="heading"> popular <span>vehicles</span> </h1>

        <div class="swiper vehicles-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide box">
                    <img src="image/innova.png" alt="">
                    <div class="content">
                        <h3>Innova</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs.18.09 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2022
                            <span class="fas fa-circle"></span> automatic
                            <span class="fas fa-circle"></span> diesel

                        </p>
                        <a href="https://www.toyotabharat.com/showroom/innova/" target="_blank" class="btn">check out</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/fortuner.png" alt="">
                    <div class="content">
                        <h3>Fortuner</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs.32.59 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2022
                            <span class="fas fa-circle"></span> automatic
                            <span class="fas fa-circle"></span> Diesel

                        </p>
                        <a href="https://www.toyotabharat.com/campaign/fortuner/?utm_campaign=fortunerao2022&utm_source=google&utm_medium=search&utm_term=cpc&utm_content=ao&agency_code=HAKXX&gclid=Cj0KCQiA4OybBhCzARIsAIcfn9md8PDSr-kKbL9CU_KjtHQQa_2qwM5sM0_RdXrU8ngqRDLZMUTARHsaAlJ6EALw_wcB" target="_blank" class="btn">check out</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/jeep compass.png" alt="">
                    <div class="content">
                        <h3>Compass</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs.19.27 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2022
                            <span class="fas fa-circle"></span> automatic
                            <span class="fas fa-circle"></span> petrol

                        </p>
                        <a href="https://www.jeep-india.com/shopping_tools/satd.compass.html?utm_source=google&utm_medium=search&utm_campaign=google_search_compass_brand_oct_22_top-performing-kwd&utm_term=jeep%20compass&utm_content=jeep_compass_top_perf_p1&gclid=Cj0KCQiA4OybBhCzARIsAIcfn9l0jj4wkIWGZfykRDhzjXSuBML2QNB3lCIBLyt57MYC7IFKEneZW1EaAhY2EALw_wcB" target="_blank" class="btn">check out</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/thar.png" alt="">
                    <div class="content">
                        <h3>Thar</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs.16.29 lakh/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2022
                            <span class="fas fa-circle"></span> automatic
                            <span class="fas fa-circle"></span> Diesel

                        </p>
                        <a href="https://auto.mahindra.com/suv/thar?gclsrc=aw.ds&&utm_source=brandsearch&utm_medium=cpc&utm_campaign=thar_alwaysoncampaign_nov22&utm_term=thar&utm_adgroup=brand&utm_content=rsa1_nov22&gclid=Cj0KCQiA4OybBhCzARIsAIcfn9kBhyO4COiz9361vWJEyeuZ2qc5xr1lVCymCK4IVB3VyALiPomr_D8aAvp0EALw_wcB" target="_blank" class="btn">check out</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/g wagon.png" alt="">
                    <div class="content">
                        <h3>G-Wagon</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs.1.72 Cr/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2022
                            <span class="fas fa-circle"></span> automatic
                            <span class="fas fa-circle"></span> Diesel

                        </p>
                        <a href="https://www.mercedes-benz-silverarrows.in/AMG-G63/?utm_source=Google&utm_medium=CPC&utm_campaign=AMG+G63+September2021&utm_id=AMG+G63&utm_term=AMG+G63&utm_content=Sep2021&gclid=Cj0KCQiA4OybBhCzARIsAIcfn9nzJ3ydq-hx9e6AJ3wwjsxLlp1GY9hzoXSa8oZRhf-ged_IWUXBXgIaAhuUEALw_wcB" target="blank" class="btn">check out</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/rolls royce.png" alt="">
                    <div class="content">
                        <h3>Rolls Royce</h3>
                        <div class="price"> <span>Ex-showroom Price : </span> Rs.6.22 Cr/- </div>
                        <p>
                            new
                            <span class="fas fa-circle"></span> 2022
                            <span class="fas fa-circle"></span> automatic
                            <span class="fas fa-circle"></span> petrol

                        </p>
                        <a href="https://www.rolls-roycemotorcars.com/en_GB/home.html" target="_blank" class="btn">check out</a>
                    </div>
                </div>

            </div>

            <div class="swiper-pagination"></div>

        </div>

    </section>

    <!-- Services Section -->

    <section class="services" id="services">

        <h1 class="heading"> our <span>services</span> </h1>

        <div class="box-container">

            <div class="box">
                <i class="fas fa-car"></i>
                <h3>car selling</h3>
                <p>Looking to Sell Your Car? Get Instant Used Car Valuation Online with Free Home Inspection.</p>
                <a href="#old-vehicles" class="btn"> read more</a>
            </div>

            <div class="box">
                <i class="fas fa-tools"></i>
                <h3>parts repair</h3>
                <p>Spare parts of original manufacturer quality - ready to dispatch anywhere in the world!</p>
                <a href="https://gomechanic.in/delhi" target="_blank" class="btn"> read more</a>
            </div>

            <div class="box">
                <i class="fas fa-car-crash"></i>
                <h3>car insurance</h3>
                <p>Renew your car insurance hassle free in Just 3 Easy Steps.</p>
                <a href="https://www.acko.com/lp/new-car-comprehensive-hi?utm_source=google&utm_medium=cpc&utm_campaign=1st_Party_Generic_Search_Delhi_Neev&utm_adgroup=Insurance_Core&utm_term=car%20insurance&utm_network=g&utm_matchtype=p&utm_device=c&utm_placement=&utm_content=614095725480&utm_Adposition=&utm_location=9061669&utm_Sitelink=&utm_Audience=aud-403647165501:kwd-10033531&utm_Promotion=&utm_Price=&gclid=Cj0KCQiA4OybBhCzARIsAIcfn9l_FNaG5_1PodiAs9o6Yc3yQe-LV85iGCq_jmRrMwLQ7-l5C_KTv7YaAvs7EALw_wcB" target="_blank" class="btn"> read more</a>
            </div>

            <div class="box">
                <i class="fas fa-car-battery"></i>
                <h3>battery replacement</h3>
                <p>Check battery prices for your car from the wide range of list available.</p>
                <a href="https://gomechanic.in/delhi" target="_blank" class="btn"> read more</a>
            </div>

            <div class="box">
                <i class="fas fa-gas-pump"></i>
                <h3>oil change</h3>
                <p>We offers a wide variety of car services from periodic car servicing, car washing, car coating, wheel balancing and alignment, and many more.</p>
                <a href="https://gomechanic.in/delhi" target="_blank" class="btn"> read more</a>
            </div>

            <div class="box">
                <i class="fas fa-headset"></i>
                <h3>24/7 support</h3>
                <p>24/7 support services are here to ensure our customers' success and business productivity – whether for on-site assistance, technical, or remote support.</p>
                <a href="#footer" class="btn"> read more</a>
            </div>

        </div>

    </section>


    <!-- Subscription Section -->

    <section class="newsletter">

        <h3>subscribe for latest updates</h3>
        <p>To get all the latest updates directly on your Mail.</p>

        <form action="mails.php" method="post">
            <input type="email" placeholder="Enter your Email" name="mail" required>
            <input type="submit" value="subscribe" class="newsubs">

        </form>

    </section>

    <!-- Reviews Section -->

    <section class="reviews" id="reviews">

        <h1 class="heading"> client's <span>review</span> </h1>

        <div class="swiper review-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide box">
                    <img src="image/pic-1.png" alt="">
                    <div class="content">
                        <p>Finnaly I have decided which car suits me. Thank you OldWheels. </p>
                        <h3>Devesh</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/shivam.jpg" alt="image">
                    <div class="content">
                        <p>It helps me to sell my old car in best price. </p>
                        <h3>Shivam</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/pic-3.png" alt="">
                    <div class="content">
                        <p>Love it.</p>
                        <h3>Yash</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/pic-4.png" alt="">
                    <div class="content">
                        <p>Great Website.</p>
                        <h3>Annu</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/pic-5.png" alt="">
                    <div class="content">
                        <p>Helpfull.</p>
                        <h3>Abhishek</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="image/pic-6.png" alt="">
                    <div class="content">
                        <p>Amazing.</p>
                        <h3>Riya</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

            </div>

            <div class="swiper-pagination"></div>

        </div>

    </section>

    <!-- Contact Section -->

    <section class="contact" id="contact">

        <h1 class="heading"><span>contact</span> us</h1>

        <div class="row">

            <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3509.93353172803!2d77.4376795146469!3d28.391075482513724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cc396202390af%3A0xf7891d8025d636ed!2sEchelon%20Institute%20Of%20Technology%20-%20Top%20BBA%2C%20BCA%2C%20B.Tech%20College%20in%20Faridabad!5e0!3m2!1sen!2sin!4v1669042668660!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>

            <form action="user_contact.php" method="post">
                <h3>get in touch</h3>
                <input type="text" placeholder="Your Name" class="box" name="name" required>
                <input type="email" placeholder="Your Email" class="box" name="email" required>
                <input type="tel" placeholder="Contact Number" class="box" name="contact" pattern='[0-9]{8,11}' required>
                <textarea placeholder="Your Message" class="box" cols="30" rows="10" name="msg"></textarea>
                <input type="submit" value="send message" class="btn">
            </form>

        </div>

    </section>

    <!-- Footer Section -->

    <section class="footer" id="footer">

        <div class="box-container">

            <div class="box">
                <h3>our branches</h3>
                <a href="https://www.google.com/maps/place/India/@20.0867525,64.4195465,4z/data=!3m1!4b1!4m5!3m4!1s0x30635ff06b92b791:0xd78c4fa1854213a6!8m2!3d20.593684!4d78.96288" target="_blank"> <i class="fas fa-map-marker-alt"></i> india </a>
                <a href="https://www.google.com/maps/place/Japan/@32.1686231,119.0070947,4z/data=!3m1!4b1!4m5!3m4!1s0x34674e0fd77f192f:0xf54275d47c665244!8m2!3d36.204824!4d138.252924" target="_blank"> <i class="fas fa-map-marker-alt"></i> japan </a>
                <a href="https://www.google.com/maps/place/France/@45.8660696,-6.9298374,5z/data=!3m1!4b1!4m5!3m4!1s0xd54a02933785731:0x6bfd3f96c747d9f7!8m2!3d46.227638!4d2.213749" target="_blank"> <i class="fas fa-map-marker-alt"></i> france </a>
                <a href="https://www.google.com/maps/place/Russia/@49.7198179,68.7139596,3z/data=!3m1!4b1!4m5!3m4!1s0x453c569a896724fb:0x1409fdf86611f613!8m2!3d61.52401!4d105.318756" target="_blank"> <i class="fas fa-map-marker-alt"></i> russia </a>
                <a href="https://www.google.com/maps/place/United+States/@36.2077343,-113.7407914,4z/data=!3m1!4b1!4m5!3m4!1s0x54eab584e432360b:0x1c3bb99243deb742!8m2!3d37.09024!4d-95.712891" target="_blank"> <i class="fas fa-map-marker-alt"></i> USA </a>
            </div>

            <div class="box">
                <h3>quick links</h3>
                <a href="#home"> <i class="fas fa-arrow-right"></i> home </a>
                <a href="#vehicles"> <i class="fas fa-arrow-right"></i> vehicles </a>
                <a href="#services"> <i class="fas fa-arrow-right"></i> services </a>
                <!-- <a href="#featured"> <i class="fas fa-arrow-right"></i> featured </a> -->
                <a href="#reviews"> <i class="fas fa-arrow-right"></i> reviews </a>
                <a href="#contact"> <i class="fas fa-arrow-right"></i> contact </a>
            </div>

            <div class="box">
                <h3>contact info</h3>
                <a href="#contact"> <i class="fas fa-phone"></i> +91 9069660970 </a>
                <a href="#contact"> <i class="fas fa-phone"></i> +91 9899691065 </a>
                <a href="https://mail.google.com/mail/u/0/#inbox" target="_blank"> <i class="fas fa-envelope"></i> krishnanavasthi@gmail.com </a>
                <a href="https://www.google.com/maps/place/Delhi/@28.6437954,76.8130338,10z/data=!3m1!4b1!4m5!3m4!1s0x390cfd5b347eb62d:0x37205b715389640!8m2!3d28.7040592!4d77.1024902" target="_blank"> <i class="fas fa-map-marker-alt"></i> Delhi, India - 110031 </a>
            </div>

            <div class="box">
                <h3>contact info</h3>
                <a href="https://www.facebook.com/" target="_blank"> <i class="fab fa-facebook-f"></i> facebook </a>
                <a href="https://twitter.com/home" target="_blank"> <i class="fab fa-twitter"></i> twitter </a>
                <a href="https://www.instagram.com/" target="_blank"> <i class="fab fa-instagram"></i> instagram </a>
                <a href="https://www.linkedin.com/" target="_blank"> <i class="fab fa-linkedin"></i> linkedin </a>
                <a href="https://in.pinterest.com/" target="_blank"> <i class="fab fa-pinterest"></i> pinterest </a>
            </div>

        </div>

        <div class="credit"> created by Krishnan Avasthi <br> all rights reserved </div>

    </section>



    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

    <script src="js/script.js"></script>


</body>

</html>