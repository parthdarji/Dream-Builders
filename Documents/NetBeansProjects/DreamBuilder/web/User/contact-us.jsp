<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<head>
    <meta charset="utf-8">

    <title>Real Homes</title>
    <link rel="shortcut icon" href="images/favicon.png" />
    <!-- Define a viewport to mobile devices to use - telling the browser to assume that the page is as wide as the device (width=device-width) and setting the initial page zoom level to be 1 (initial-scale=1.0) -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Google Web Font -->
    <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>

    <!-- Include the bootstrap stylesheet -->
    <link href="css/bootstrap.css" rel="stylesheet" media="all">

    <!-- Include the Bootstrap responsive utitlities stylesheet -->
    <link href="css/_responsive-utilities.css" rel="stylesheet" media="all">

    <!-- Include the Awesome Font stylesheet -->
    <link href="css/font-awesome.min.css" rel="stylesheet" media="all">

    <!-- Include the bootstrap responsive stylesheet -->
    <link href="css/responsive.css" rel="stylesheet" media="all">

    <!-- Flexslider stylesheet -->
    <link href="js/flexslider/flexslider.css" rel="stylesheet" media="all">

    <!-- Pretty Photo stylesheet -->
    <link href="js/prettyphoto/prettyPhoto.css" rel="stylesheet" media="all">

    <!-- Pretty Photo stylesheet -->
    <link href="js/swipebox/swipebox.css" rel="stylesheet" media="all">

    <!-- Include the site main stylesheet -->
    <link href="css/main.css" rel="stylesheet" media="all">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>


<!-- Start Header -->
<jsp:include page="header.jsp"></jsp:include>

    <!-- Page Head -->
    <div class="page-head" style="background-repeat: no-repeat;background-position: center top;background-image: url('images/temp-images/page-head-image.jpg'); ">
        <div class="container">
            <div class="wrap clearfix">
                <h1 class="page-title"><span>Contact Us</span></h1>
                <p>Use the information provided below to reach us OR leave us a message using contact form.</p>
            </div>
        </div>
    </div>

    <!-- Content -->
    <div class="container contents single">
        <div class="row">
            <div class="span9 main-wrap">
                <!-- Main Content -->
                <div class="main">
                    <div class="inner-wrapper">
                        <article id="post-122" class="post-122 page type-page status-publish hentry clearfix">
                        </article>
                        <div class="map-container clearfix">
                            <div id="map_canvas"></div>

                            <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
                            <script type="text/javascript">
                                // Google Map
                                function initialize()
                                {
                                    var geocoder  = new google.maps.Geocoder();
                                    var map;
                                    var latlng = new google.maps.LatLng(-37.817917, 144.965065);
                                    var infowindow = new google.maps.InfoWindow();
                                    var myOptions = {
                                        zoom: 17,
                                        mapTypeId: google.maps.MapTypeId.ROADMAP
                                    };

                                    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

                                    geocoder.geocode( { 'location': latlng },
                                        function(results, status) {
                                            if (status == google.maps.GeocoderStatus.OK)
                                            {
                                                map.setCenter(results[0].geometry.location);
                                                var marker = new google.maps.Marker({
                                                    map: map,
                                                    position: results[0].geometry.location
                                                });
                                                //alert(results[0].formatted_address);
                                                //infowindow.setContent(results[0].formatted_address);
                                                //infowindow.open(map, marker);
                                            }
                                            else
                                            {
                                                alert("Geocode was not successful for the following reason: " + status);
                                            }
                                        });

                                }

                                initialize();
                            </script>
                        </div>
                        <section class="contact-details clearfix">
                            <h3>Real Homes</h3>
                            <address>710, Summit Ave.<br>Jersey City, New Jersey - 07306</address>
                            <ul class="contacts-list">
                                <li class="phone"> Phone: 1-800-555-1234</li>
                                <li class="mobile"> Mobile: 123-456-7890</li>
                                <li class="email"> Email: info@Dreambuilder.com</li>
                            </ul>
                        </section>
                        <section id="contact-form">
                            <h3 class="form-heading">Send us a message</h3>
                            <form class="contact-form" method="post" action="contact_form_handler.php">
                                <p>
                                    <label for="name">Name</label>
                                    <input type="text" name="name" id="name" class="required" title="* Please provide your name">
                                </p>

                                <p>
                                    <label for="email">Email</label>
                                    <input type="text" name="email" id="email" class="email required" title="* Please provide a valid email address">
                                </p>

                                <p>
                                    <label for="subject">Subject</label>
                                    <input type="text" name="subject" id="subject">
                                </p>

                                <p>
                                    <label for="comment">Message</label>
                                    <textarea name="message" id="comment" class="required" title="* Please provide your message"></textarea>
                                </p>

                                <p>
                                    <input type="submit" value="Send Message" id="submit" class="real-btn" name="submit">
                                    <img src="images/ajax-loader.gif" id="contact-loader" alt="Loading...">
                                    <input type="hidden" name="action" value="send_message">
                                    <input type="hidden" name="target" value="robot@psdtohtmlwp.com">
                                </p>
                                <div class="error-container"></div>
                                <div id="message-sent">&nbsp;</div>
                            </form>
                        </section>

                    </div>
                </div><!-- End Main Content -->

            </div> <!-- End span9 -->

            <div class="span3 sidebar-wrap">

                <!-- Sidebar -->
                <aside class="sidebar">
                    <section class="widget"><h3 class="title">Site Search</h3><form role="search" method="get" id="searchform" class="searchform" action="#">
                            <div>
                                <label class="screen-reader-text" for="s">Search for:</label>
                                <input type="text" value="" name="s" id="s">
                                <input type="submit" id="searchsubmit" value="Search">
                            </div>
                        </form>
                    </section>
                    <section class="widget">
                        <h3 class="title">Recent Posts</h3>
                        <ul>
                            <li>
                                <a href="#" title="Hello world!">Hello world!</a>
                            </li>
                            <li>
                                <a href="#" title="Lorem Post With Image Format">Lorem Post With Image Format</a>
                            </li>
                            <li>
                                <a href="#" title="Example Video Blog Post">Example Video Blog Post</a>
                            </li>
                            <li>
                                <a href="#" title="Example Post With Gallery Post Format">Example Post With Gallery Post Format</a>
                            </li>
                            <li>
                                <a href="#" title="Example Post With Image Post Format">Example Post With Image Post Format</a>
                            </li>
                        </ul>
                    </section>    </aside><!-- End Sidebar -->

            </div>


        </div><!-- End contents row -->

    </div><!-- End Content -->



<jsp:include page="footer.jsp"></jsp:include>

<script src="js/jquery.min.js"></script>
<script src="js/flexslider/jquery.flexslider.js"></script>
<script src="js/elastislide/jquery.easing.1.3.js"></script>
<script src="js/elastislide/jquery.elastislide.js"></script>
<script src="js/prettyphoto/jquery.prettyPhoto.js"></script>
<script src="js/swipebox/jquery.swipebox.min.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/jquery.jcarousel.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.selectbox.js"></script>
<script src="js/jquery.transit.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-twitterFetcher.js"></script>
<script src="js/custom.js"></script>

</body>
</html>


