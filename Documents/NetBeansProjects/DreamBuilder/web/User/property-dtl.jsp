<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<head>
    <meta charset="utf-8">

    <title>Dream Builders</title>
    <link rel="shortcut icon" href="img/favicon.png" />
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
    <link href="css/flexslider.css" rel="stylesheet" media="all">

    <!-- Pretty Photo stylesheet -->
    <link href="css/prettyPhoto.css" rel="stylesheet" media="all">

    <!-- Pretty Photo stylesheet -->
    <link href="css/swipebox.css" rel="stylesheet" media="all">

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
   <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
   
   
   <!-- End Header Container -->

<!-- End Header -->

    <!-- Page Head -->
    <div class="page-head" style="background-repeat: no-repeat;background-position: center top;background-image: url('img/page-head-image.jpg'); ">
        <div class="container">
            <div class="wrap clearfix">
                <h1 class="page-title"><span>Property Details</span></h1>
                <p>Details are as under </p>

            </div>
        </div>
    </div>

    <!-- Content -->
    <div class="container contents lisitng-grid-layout">

        <div class="row">

            <div class="span9 main-wrap">

                <!-- Main Content -->
                <div class="main">

                    <section id="overview">

                        <div id="property-detail-flexslider" class="clearfix">
                            <div class="flexslider">
					<c:forEach items="${sessionScope.fulldetail}" var="b">
								<c:set value="${b[0] }" var="p"></c:set>
        						<c:set value="${b[1] }" var="q"></c:set>

                                <ul class="slides">
                                    <li data-thumb="<%=request.getContextPath() %>/User/img/${p.path}">
                                        <a href="<%=request.getContextPath() %>/User/img/${p.path}" class="swipebox">
                                            <img src="<%=request.getContextPath() %>/User/img/${p.path}" alt="image1">
                                        </a>
                                    </li>
                                    
                                    
                                    
                                </ul>

</c:forEach>
                            </div>
                        </div>

                        <article class="property-item clearfix">

<c:forEach items="${sessionScope.fulldetail}" var="a" varStatus="j">
		<c:set value="${a[0] }" var="p"></c:set>
        <c:set value="${a[1] }" var="q"></c:set>
        <c:if test="${j.count eq 1 }">
<c:set var="name" value="${q.propertyName }" scope="session"></c:set>
<c:set var="id" value="${q.propertyId }" scope="session"></c:set>     
 <c:set var="price" value="${q.price }" scope="session"></c:set>  		     
                            <div class="wrap clearfix">
                                <h4 class="title">${q.propertyName } </h4>
                                <h5 class="price">
                                    <span class="status-label">
                             For  ${q.type }
                                    </span>
                                    <span>
                                        ${q.price } <small> </small>
                                    </span>
                                    <span id="longitude" style="display: none">
                                        ${q.longitude } <small> </small>
                                    </span>
                                     <span id="latitutde" style="display: none">
                                        ${q.lattitude } <small> </small>
                                    </span>
                                   
                                </h5>
                            </div>
					<div class="property-meta clearfix">
					<h4 class="title">Description</h4><br><br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>${q.propertyDesc }</p>
					</div>
					
                            <div class="property-meta clearfix">
                                <span><i class="icon-area"></i>3800 sq ft&nbsp;</span><span><i class="icon-bed"></i>4&nbsp;Bedrooms</span><span><i class="icon-bath"></i>3&nbsp;Bathrooms</span><span><i class="icon-garage"></i>2&nbsp;Garages</span>
                                <!-- Print Icon -->
                                <span class="printer-icon"><a href="javascript:window.print()">E--brochure</a></span>
                            </div>
                            <c:if test="${q.bid eq 'yes'}">
                            
                        
        	 			<form action="<%=request.getContextPath()%>/BidController?flag=checkbid&propertyId=${q.propertyId }" method="post"><div style="display: "> <input type="submit" value="Apply for bid" onclick="" class=" real-btn btn"></div>
						</form>	</c:if>
 
                            <div class="content clearfix">
                                <p></p>
                                
                                    </div>

                            <div class="features">
                                <h4 class="title">Features</h4>
                                <ul class="arrow-bullet-list clearfix">
                                    <li><a href="#">2 Stories</a></li>
                                    <li><a href="#">Central Heating</a></li>
                                    <li><a href="#">Dual Sinks</a></li>
                                    <li><a href="#">Electric Range</a></li>
                                    <li><a href="#">Fire Place</a></li>
                                    <li><a href="#">Laundry Room</a></li>
                                    <li><a href="#">Lawn</a></li>
                                    <li><a href="#">Marble Floors</a></li>
                                    <li><a href="#">Swimming Pool</a></li>
                                </ul>
                            </div>
   </c:if>   
</c:forEach>
                        </article>

                       <!--  <div class="property-video">
                            <span class="video-label">Property Video</span>
                            <a href="http://vimeo.com/70301553" class="pretty-photo" title="Video">
                                <div class="play-btn"></div>
                                <img src="img/property-video-image.jpg" alt="700 Front Street, Key West, FL">
                            </a>
                        </div>
 -->
                        <div class="map-wrap clearfix">
                            <span class="map-label">Property Map</span>
                            <div id="property_map">

                            </div>

                            <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
                            <script type="text/javascript">
                                // Google Map
                                function initialize()
                                {
                                	var latitudeval=document.getElementById("latitutde").innerHTML.trim();
                                	var longitudeval=document.getElementById("longitude").innerHTML.trim();
                                	//alert(parseFloat(latitudeval)+"--"+parseFloat(longitudeval));
                                    var geocoder  = new google.maps.Geocoder();
                                    var map;
                                    var latlng = new google.maps.LatLng(parseFloat(latitudeval), parseFloat(longitudeval));
                                    var infowindow = new google.maps.InfoWindow();
                                    var myOptions = {
                                        zoom: 17,
                                        mapTypeId: google.maps.MapTypeId.ROADMAP
                                    };

                                    map = new google.maps.Map(document.getElementById("property_map"), myOptions);

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

                            <div class="share-networks clearfix">
                                <span class="share-label">Share this</span>
                                <span><a target="_blank" href="https://www.facebook.com"><i class="icon-facebook"></i>Facebook</a></span>
                                <span><a target="_blank" href="https://twitter.com"><i class="icon-twitter"></i>Twitter</a></span>
                                <span><a target="_blank" href="https://plus.google.com"><i class="icon-google-plus"></i>Google</a></span>
                            </div>
                        </div>

                        <div class="agent-detail clearfix">

                            <div class="left-box">
                                <h3>Agent John Doe</h3>
                                <figure>
                                    <a href="#">
                                        <img src="img/agent-john.jpg"  alt="agent pic">
                                    </a>
                                </figure>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl…</p>
                                <ul class="contacts-list">
                                    <li class="office">Office : 041-456-7890</li>
                                    <li class="mobile">Mobile : 0223-123-4567</li>
                                    <li class="fax">Fax  : 041-789-1234</li>
                                </ul>
                            </div>

                            <div class="contact-form">

                                <h3>Contact</h3>

                                <form id="agent-contact-form" class="contact-form-small" method="post" action="agent_form_handler.php">

                                    <input type="text" name="name" id="name" value="Name" class="required" title="* Please provide your name">

                                    <input type="text" name="email" id="email" value="Email" class="email required" title="* Please provide valid email address">

                                    <textarea name="message" id="comment" class="required" title="* Please provide your message">Message</textarea>

                                    <input type="hidden" name="target" value="robot@psdtohtmlwp.com">
                                    <input type="hidden" name="action" value="send_message_to_agent">
                                    <input type="hidden" name="property_title" value="700 Front Street, Key West, FL">
                                    <input type="hidden" name="property_permalink" value="http://www.960demo.com/realhomes-html/property.php">

                                    <input type="submit" value="Submit" name="submit" class="real-btn">
                                    <img src="img/ajax-loader.gif" id="contact-loader" alt="Loading...">

                                </form>

                                <div class="error-container"></div>
                                <div id="message-sent">&nbsp;</div>
                            </div>
                        </div>


                    </section>

                </div><!-- End Main Content -->

            </div> <!-- End span9 -->

            <div class="span3 sidebar-wrap">

                <!-- Sidebar -->
                <aside class="sidebar">

                    <section class="widget advance-search">
                        <h4 class="title search-heading">Find Your Home<i class="icon-search"></i></h4>
                        <div class="as-form-wrap">
                            <form class="advance-search-form clearfix" action="#" method="get">

                                <div class="option-bar">
                                    <label>Location</label>
                        <span class="selectwrap">
                                        <select name="location" id="select-location" class="search-select">
											<option value="any" selected="selected">Any</option>
                                            <option value="miami">Miami</option>
                                            <option value="newyork">New York</option>
                                        </select>
                                    </span>
                                </div>

                                <div class="option-bar">
                                    <label>Status</label>
                        <span class="selectwrap">
                            <select name="status" id="select-status" class="search-select">
                                <option value="on-rent">On Rent</option>
                                <option value="on-sale">On Sale</option>
                                <option value="any" selected="selected">Any</option>
                            </select>
                        </span>
                                </div>

                                <div class="option-bar">
                                    <label>Property Type</label>
                        <span class="selectwrap">
                            <select name="type" id="select-property-type" class="search-select">
                                <option value="condominium">Condominium</option>
                                <option value="single-family-home">Single Family Home</option>
                                <option value="villa">Villa</option>
                                <option value="any" selected="selected">Any</option>
                            </select>
                        </span>
                                </div>

                                <div class="option-bar mini first">
                                    <label>Bedrooms</label>
                        <span class="selectwrap">
                            <select name="bedrooms" id="select-bedrooms" class="search-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="any" selected="selected">Any</option>
                            </select>
                        </span>
                                </div>

                                <div class="option-bar mini">
                                    <label>Bathrooms</label>
                        <span class="selectwrap">
                            <select name="bathrooms" id="select-bathrooms" class="search-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="any" selected="selected">Any</option>
                            </select>
                        </span>
                                </div>

                                <div class="option-bar mini first">
                                    <label>Min Price</label>
                        <span class="selectwrap">
                            <select name="min-price" id="select-min-price" class="search-select">
                                <option value="50000">$50,000</option>
                                <option value="100000">$100,000</option>
                                <option value="200000">$200,000</option>
                                <option value="300000">$300,000</option>
                                <option value="400000">$400,000</option>
                                <option value="500000">$500,000</option>
                                <option value="600000">$600,000</option>
                                <option value="700000">$700,000</option>
                                <option value="800000">$800,000</option>
                                <option value="900000">$900,000</option>
                                <option value="1000000">$1,000,000</option>
                                <option value="any" selected="selected">Any</option>
                            </select>
                        </span>
                                </div>

                                <div class="option-bar mini">
                                    <label>Max Price</label>
                        <span class="selectwrap">
                            <select name="max-price" id="select-max-price" class="search-select">
                                <option value="100000">$100,000</option>
                                <option value="200000">$200,000</option>
                                <option value="300000">$300,000</option>
                                <option value="400000">$400,000</option>
                                <option value="500000">$500,000</option>
                                <option value="600000">$600,000</option>
                                <option value="700000">$700,000</option>
                                <option value="800000">$800,000</option>
                                <option value="900000">$900,000</option>
                                <option value="1000000">$1,000,000</option>
                                <option value="any" selected="selected">Any</option>
                            </select>
                        </span>
                                </div>

                                <input type="submit" value="Search" class=" real-btn btn">
                            </form>
                        </div>
                    </section><section class="widget">
                    <h3 class="title">Property Types</h3>
                    <ul>
                        <li><a href="#">Condominium</a></li>
                        <li><a href="#">Single Family Home</a></li>
                        <li><a href="#">Villa</a></li>
                    </ul>
                </section>
                    <section class="widget"
                            ><h3 class="title">Featured Properties</h3>
                        <ul class="featured-properties">
                            <li>
                                <figure>
                                    <a href="#">
                                        <img  src="img/featured-widget-image1.jpg"  alt="property 02">
                                    </a>
                                </figure>
                                <h4><a href="#" title="401 Biscayne Boulevard, Miami">401 Biscayne Boulevard, Miami</a></h4>
                                <p>Nam liber tempor cum soluta nobis eleifend… <a href="#">Read More</a></p>
                                <span class="price">$3,250 Per Month</span>
                            </li>
                            <li>
                                <figure>
                                    <a href="#">
                                        <img src="img/featured-widget-image2.jpg"  alt="property 08">
                                    </a>
                                </figure>
                                <h4><a href="#" title="700 Front Street, Key West, FL">700 Front Street, Key West, FL</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing… <a href="#">Read More</a></p>
                                <span class="price">$850,000 </span>
                            </li>
                        </ul>
                    </section>    </aside><!-- End Sidebar -->

            </div>

        </div><!-- End contents row -->

    </div><!-- End Content -->

<div class="container page-carousel">
    <div class="row">
        <div class="span12">
            <section class="brands-carousel  clearfix">
                <h3><span>Partners</span></h3>
                <div class="jcarousel-container">
                    <div class="jcarousel-clip">
                        <ul class="brands-carousel-list clearfix">
                            <li>
                                <a target="_blank" href="http://themeforest.net/" title="themeforest">
                                    <img src="img/logo-1.png" alt="themeforest" title="themeforest">
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="http://photodune.net/" title="photodune">
                                    <img src="img/logo-2.png" alt="photodune" title="photodune">
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="http://activeden.net/" title="themeforest">
                                    <img src="img/logo-3.png"  alt="activeden" title="activeden">
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="http://graphicriver.net/" title="graphicriver">
                                    <img src="img/logo-4.png"  alt="graphicriver" title="graphicriver">
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="http://videohive.net/" title="videohive">
                                    <img src="img/logo-5.png"  alt="videohive" title="videohive">
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="http://themeforest.net/" title="themeforest">
                                    <img src="img/logo-1.png" alt="themeforest" title="themeforest">
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="http://photodune.net/" title="photodune">
                                    <img src="img/logo-2.png"  alt="photodune" title="photodune">
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="http://activeden.net/" title="activeden">
                                    <img  src="img/logo-3.png"  alt="activeden" title="activeden">
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="jcarousel-prev"></div>
                    <div class="jcarousel-next"></div>
                </div>
            </section>
        </div>
    </div>
</div>


<footer id="footer-wrapper">

    <div id="footer" class="container">

        <div class="row">

           <!-- <div class="span3">
                <section class="widget">
                    <h3 class="title">About Real Homes</h3>
                    <div class="textwidget">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                        <p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
                    </div>
                </section>
            </div>-->

           <!-- <div class="span3">
                <section class="widget">
                    <h3 class="title">Recent Posts</h3>
                    <ul>
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
                        <li>
                            <a href="#" title="Lorem Ipsum Dolor Sit Amet">Lorem Ipsum Dolor Sit Amet</a>
                        </li>
                    </ul>
                </section>
            </div>  -->

         <!--   <div class="span3">
                <section class="widget">
                    <h3 class="title">Latest Tweets</h3>
                    <ul id="twitter_update_list">
                        <li>No Tweet Loaded !</li>
                    </ul>
                </section>
            </div>-->

           <!-- <div class="span3">
                <section class="widget"><h3 class="title">Contact Info</h3>
                    <div class="textwidget">
                        <p>3015 Grand Ave, Coconut Grove,<br>
                            Merrick Way, NJ 12345</p>
                        <p>Phone: 123-456-7890</p>
                        <p>Email: <a href="mailto:info@yourwebsite.com">info@yourwebsite.com</a></p>
                    </div>
                </section>
            </div>
        </div> -->

    </div>

    <!-- Footer Bottom -->
    <div id="footer-bottom" class="container">

        <div class="row">
            <div class="span6">
                <p class="copyright">Copyright © 2016. All Rights Reserved.</p>
            </div>
            <div class="span6">
                <p class="designed-by">Dream Builder  - Design by <a target="_blank" href="http://themedesigner.in/">XXX</a></p>                        </div>
        </div>

    </div>
    <!-- End Footer Bottom -->

</footer>


<script src="js/jquery.min.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.elastislide.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/jquery.swipebox.min.js"></script>
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


