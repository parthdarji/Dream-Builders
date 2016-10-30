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
                <h1 class="page-title"><span>Properties Gallery</span></h1>
                <p>Look for your desired property more efficiently</p>
            </div>
        </div>
    </div>

    <!-- Content -->
    <div class="container contents lisitng-grid-layout">
        <div class="row">
            <div class="span12 main-wrap">

                <!-- Main Content -->
                <div class="main">

                    <section class="listing-layout">

                        <h3 class="title-heading">3 Columns Gallery</h3>

                        <!-- Gallery Filter -->
                        <div id="filter-by" class="clearfix">
                            <a href="#" data-filter="gallery-item" class="active">All</a>
                            <a href="#" data-filter="on-rent" title="View all Properties having On Rent status">On Rent</a>
                            <a href="#" data-filter="on-sale" title="View all Properties having On Sale status">On Sale</a>
                        </div>

                        <!-- Gallery Container -->
                        <div id="gallery-container">
                            <div class="gallery-3-columns isotope clearfix">
                                <div class="gallery-item isotope-item on-rent ">
                                    <figure>
                                        <div class="media_container">
                                            <a class="swipebox zoom" href="images/temp-images/property1.jpg" title="15421 Southwest 39th Terrace"></a>
                                            <a class="link" href="#"></a>
                                        </div>
                                        <img class="img-border" src="images/temp-images/property1.jpg" alt="15421 Southwest 39th Terrace">
                                    </figure>
                                    <h5 class="item-title"><a href="#" title="15421 Southwest 39th Terrace">15421 Southwest 39th Terrace</a></h5>
                                </div>

                                <div class="gallery-item isotope-item on-sale ">
                                    <figure>
                                        <div class="media_container">
                                            <a class="swipebox zoom" href="images/temp-images/property2.jpg" title="700 Front Street, Key West, FL"></a>
                                            <a class="link" href="#"></a>
                                        </div>
                                        <img class="img-border" src="images/temp-images/property2.jpg" alt="700 Front Street, Key West, FL">
                                    </figure>
                                    <h5 class="item-title"><a href="#" title="700 Front Street, Key West, FL">700 Front Street, Key West, FL</a></h5>
                                </div>



                                <div class="gallery-item isotope-item on-rent ">
                                    <figure>
                                        <div class="media_container">
                                            <a class="swipebox zoom" href="images/temp-images/property4.jpg" title="401 Biscayne Boulevard, Miami"></a>
                                            <a class="link" href="#"></a>
                                        </div>
                                        <img class="img-border" src="images/temp-images/property4.jpg" alt="401 Biscayne Boulevard, Miami">
                                    </figure>
                                    <h5 class="item-title"><a href="#" title="401 Biscayne Boulevard, Miami">401 Biscayne Boulevard, Miami</a></h5>
                                </div>

                                <div class="gallery-item isotope-item on-rent ">
                                    <figure>
                                        <div class="media_container">
                                            <a class="swipebox zoom" href="images/temp-images/property5.jpg" title="3015 Grand Avenue, CocoWalk"></a>
                                            <a class="link" href="#"></a>
                                        </div>
                                        <img class="img-border" src="images/temp-images/property5.jpg" alt="3015 Grand Avenue, CocoWalk">
                                    </figure>
                                    <h5 class="item-title"><a href="#" title="3015 Grand Avenue, CocoWalk">3015 Grand Avenue, CocoWalk</a></h5>
                                </div>

                                <div class="gallery-item isotope-item on-sale ">
                                    <figure>
                                        <div class="media_container">
                                            <a class="swipebox zoom" href="images/temp-images/property6.jpg" title="1200 Anastasia Avenue, Coral Gables"></a>
                                            <a class="link" href="#"></a>
                                        </div>
                                        <img class="img-border" src="images/temp-images/property6.jpg" alt="1200 Anastasia Avenue, Coral Gables">
                                    </figure>
                                    <h5 class="item-title"><a href="#" title="1200 Anastasia Avenue, Coral Gables">1200 Anastasia Avenue, Coral Gables</a></h5>
                                </div>

                                <div class="gallery-item isotope-item on-sale ">
                                    <figure>
                                        <div class="media_container">
                                            <a class="swipebox zoom" href="images/temp-images/property7.jpg" title="60 Merrick Way, Miami"></a>
                                            <a class="link" href="#"></a>
                                        </div>
                                        <img class="img-border" src="images/temp-images/property7.jpg" alt="60 Merrick Way, Miami">
                                    </figure>
                                    <h5 class="item-title"><a href="#" title="60 Merrick Way, Miami">60 Merrick Way, Miami</a></h5>
                                </div>

                                <div class=" gallery-item isotope-item on-sale ">
                                    <figure>
                                        <div class="media_container">
                                            <a class="swipebox zoom" href="images/temp-images/property8.jpg" title="Florida 5, Pinecrest, FL"></a>
                                            <a class="link" href="#"></a>
                                        </div>
                                        <img class="img-border" src="images/temp-images/property8.jpg" alt="Florida 5, Pinecrest, FL">
                                    </figure>
                                    <h5 class="item-title"><a href="#" title="Florida 5, Pinecrest, FL">Florida 5, Pinecrest, FL</a></h5>
                                </div>

                            </div>

                        </div>
                        <!-- end of gallery container -->

                    </section>

                </div><!-- End Main Content -->

            </div> <!-- End span12 -->

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


