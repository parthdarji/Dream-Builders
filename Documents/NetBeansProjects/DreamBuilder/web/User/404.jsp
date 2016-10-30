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
                <h1 class="page-title"><span>404 - Page Not Found!</span></h1>
                <p>The page you are looking for is not here!</p>
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
                        <article  class="page type-page clearfix">
                            <p><br><strong>Please try using top navigation OR search for what you are looking for!</strong></p>
                        </article>
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


