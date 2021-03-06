<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<head>
    <meta charset="utf-8">

    <title>Dream Builders</title>
    <link rel="shortcut icon" href="images/favicon.png" />
    <!-- Define a viewport to mobile devices to use - telling the browser to assume that the page is as wide as the device (width=device-width) and setting the initial page zoom level to be 1 (initial-scale=1.0) -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Google Web Font -->
    <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>

    <!-- Include the bootstrap stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/bootstrap.css" rel="stylesheet" media="all">

    <!-- Include the Bootstrap responsive utitlities stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/_responsive-utilities.css" rel="stylesheet" media="all">


    <!-- Include the Awesome Font stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/font-awesome.min.css" rel="stylesheet" media="all">

    <!-- Include the bootstrap responsive stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/responsive.css" rel="stylesheet" media="all">

    <!-- Flexslider stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/flexslider.css" rel="stylesheet" media="all">

    <!-- Pretty Photo stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/prettyPhoto.css" rel="stylesheet" media="all">

    <!-- Pretty Photo stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/swipebox.css" rel="stylesheet" media="all">

    <!-- Include the site main stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/main.css" rel="stylesheet" media="all">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>


<!-- Start Header -->
<jsp:include page="header.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<div id="home-flexslider" class="clearfix">
    <div class="flexslider">
        <ul class="slides">
            <li><a href="#" class="flex-prev"></a></li>
            <c:forEach items="${sessionScope.slider }" var="a">
             <c:set value="${a[0] }" var="p"></c:set>
             <c:set value="${a[1] }" var="q"></c:set>
            
            <li>
            
            
                <div class="desc-wrap">
                
                    <div class="slide-description">
                        <h3><a href="#">${q.propertyName }</a></h3>
                        <p>${q.propertyDesc }&hellip;</p>
                         <span>{q.price }</span>
                        <a href="#" class="know-more">Know More</a>
                    </div>
                </div>
                <a href="#"><img src="<%=request.getContextPath() %>/doc/${p.sliderImgName}" alt="15421 Southwest 39th Terrace"></a>
              
            </li>
              </c:forEach>
            
<li><a href="#" class="flex-next"></a></li>
        </ul>
    </div>
</div><!-- End Slider -->


    <div class="container contents">
        <div class="row">
            <div class="span12">
                <div class="main">

                <section class="advance-search ">
                    <h3 class="search-heading"><i class="icon-search"></i>Find your Home</h3>
                    <div class="as-form-wrap">
                      
                        <form class="advance-search-form clearfix"  action="<%=request.getContextPath() %>/PropertyController?flag=searchindex" method="get">
                           <!--  <div class="option-bar large">
                                <label>Location</label>
                                    <span class="selectwrap">
                                        <select name="location" id="select-location" class="search-select">
                                            <option value="miami">Miami</option>
                                            <option value="newyork">New York</option>
                                            <option value="any" selected="selected">Any</option>
                                        </select>
                                    </span>
                            </div> -->

                            <div class="option-bar large">
                                <label>Status</label>
                                    <span class="selectwrap">
                                        <select name="type" id="select-status" class="search-select">
                                            <option value="rent">On Rent</option>
                                            <option value="sale">On Sale</option>
                                            <option value="any" selected="selected">Any</option>
                                        </select>
                                    </span>
                            </div>

                            <div class="option-bar large last">
                                <label>Property Type</label>
                                    <span class="selectwrap">
                                        <select name="properties" id="select-property-type" class="search-select">
                                            <option value="Comercial">Comercial</option>
                                            <option value="Resedential">Resedential</option>
                                         
                                            <option value="" selected="selected">Any</option>
                                        </select>
                                    </span>
                            </div>

							
                            <div class="option-bar large last">
                                <label>Property Type</label>
                                    <span class="selectwrap">
                                        <select name="status" id="select-property-type" class="search-select">
                                            <option value="Upcoming">Upcoming</option>
                                            <option value="Ongoing">Ongoing</option>
                                         	<option value="Completed">Completed</option>
                                            <option value="" selected="selected">Any</option>
                                        </select>
                                    </span>
                            </div>                           

                            <input type="submit" value="Search" class=" real-btn btn">
                        </form>
                    </div>
                </section><!-- End .advance-search -->


                <section class="property-items">

                        <div class="narrative">
                            <h2>We are Offering the Best Real Estate Deals</h2>
                            <p>Look at our Latest listed properties and check out the facilities on them, We have already sold more than 5,000 Homes and we are still going at very good pace. We would love you to look into these properties and we hope that you will find something match-able to your needs.</p>
                        </div>

                        <div class="property-items-container clearfix">
                            <div class="span6 ">
                                <article class="property-item clearfix">
                                    <h4><a href="#" title="15421 Southwest 39th Terrace">15421 Southwest 39th Terrace</a></h4>

                                    <figure>
                                        <a href="#" title="15421 Southwest 39th Terrace">
                                            <img  src="<%=request.getContextPath() %>/User/img/property1.jpg"  alt="15421 Southwest 39th Terrace" title="15421 Southwest 39th Terrace">
                                        </a>
                                        <figcaption>On Rent</figcaption>
                                    </figure>

                                    <div class="detail">
                                        <h5 class="price">$3,850 Per Month<small> - Villa</small></h5>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt…</p>
                                        <a class="more-details" href="#">More Details <i class="icon-caret-right"></i></a>
                                    </div>

                                    <div class="property-meta">
                                        <span><i class="icon-area"></i>280 sq ft&nbsp;</span><span><i class="icon-bed"></i>3&nbsp;Bedrooms</span><span><i class="icon-bath"></i>3&nbsp;Bathrooms</span><span><i class="icon-garage"></i>3&nbsp;Garages</span>
                                    </div>
                                </article>
                            </div><!-- End .span6 -->

                            <div class="span6 ">
                                <article class="property-item clearfix">
                                    <h4><a href="#" title="700 Front Street, Key West, FL">700 Front Street, Key West, FL</a></h4>

                                    <figure>
                                        <a href="#" title="700 Front Street, Key West, FL">
                                            <img  src="<%=request.getContextPath() %>/User/img/property4.jpg" class="attachment-property-thumb-image wp-post-image" alt="700 Front Street, Key West, FL" title="700 Front Street, Key West, FL">
                                        </a>
                                        <figcaption>On Sale</figcaption>
                                    </figure>

                                    <div class="detail">
                                        <h5 class="price">$850,000 <small> - Single Family</small></h5>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt…</p>
                                        <a class="more-details" href="#">More Details <i class="icon-caret-right"></i></a>
                                    </div>

                                    <div class="property-meta">
                                        <span><i class="icon-area"></i>380 sq ft&nbsp;</span><span><i class="icon-bed"></i>4&nbsp;Bedrooms</span><span><i class="icon-bath"></i>3&nbsp;Bathrooms</span><span><i class="icon-garage"></i>2&nbsp;Garages</span>
                                    </div>
                                </article>
                            </div><!-- End .span6 -->


                            <div class="span6 ">
                                <article class="property-item clearfix">
                                    <h4><a href="#" title="1903 Hollywood Boulevard">1903 Hollywood Boulevard</a></h4>

                                    <figure>
                                        <a href="#" title="1903 Hollywood Boulevard">
                                            <img src="<%=request.getContextPath() %>/User/img/property5.jpg"  alt="1903 Hollywood Boulevard" title="1903 Hollywood Boulevard">
                                        </a>
                                        <figcaption>On Sale </figcaption>
                                    </figure>

                                    <div class="detail">
                                        <h5 class="price">$778,000 <small> - Villa</small> </h5>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt…</p>
                                        <a class="more-details" href="#">More Details <i class="icon-caret-right"></i></a>
                                    </div>

                                    <div class="property-meta">
                                        <span><i class="icon-area"></i>500 sq ft&nbsp;</span><span><i class="icon-bed"></i>3&nbsp;Bedrooms</span><span><i class="icon-bath"></i>3&nbsp;Bathrooms</span><span><i class="icon-garage"></i>2&nbsp;Garages</span>
                                    </div>
                                </article>
                            </div><!-- End .span6 -->

                            <div class="span6 ">
                                <article class="property-item clearfix">
                                    <h4><a href="#" title="401 Biscayne Boulevard, Miami">401 Biscayne Boulevard, Miami</a></h4>

                                    <figure>
                                        <a href="#" title="401 Biscayne Boulevard, Miami">
                                            <img src="<%=request.getContextPath() %>/User/img/property2.jpg"  alt="401 Biscayne Boulevard, Miami" title="401 Biscayne Boulevard, Miami">
                                        </a>
                                        <figcaption>On Rent</figcaption>
                                    </figure>

                                    <div class="detail">
                                        <h5 class="price">$3,250<small> - Condominium</small></h5>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt…</p>
                                        <a class="more-details" href="#">More Details <i class="icon-caret-right"></i></a>
                                    </div>

                                    <div class="property-meta">
                                        <span><i class="icon-area"></i>1500 sq ft&nbsp;</span><span><i class="icon-bed"></i>2&nbsp;Bedrooms</span><span><i class="icon-bath"></i>2&nbsp;Bathrooms</span><span><i class="icon-garage"></i>1&nbsp;Garage</span>
                                    </div>
                                </article>
                            </div><!-- End .span6 -->


                        </div><!-- End .property-items-container -->

                        <div class="pagination">
                            <a href="#" class="real-btn current">1</a> <a href="#" class="real-btn">2</a>
                        </div>


                    </section><!-- End .property-items -->


                    <section class="featured-properties-carousel clearfix">
                        <div class="narrative">
                            <h3>Featured Properties</h3>
                            <p>View a list of Featured Properties.</p>
                        </div>
                        <div class="carousel es-carousel-wrapper">
                            <div class="es-carousel">
                                <ul class="clearfix">
                                    <li>
                                        <figure>
                                            <a href="#" title="15421 Southwest 39th Terrace">
                                                <img  src="<%=request.getContextPath() %>/User/img/property1.jpg"  alt="15421 Southwest 39th Terrace" title="15421 Southwest 39th Terrace">
                                            </a>
                                        </figure>
                                        <h4><a href="#" title="15421 Southwest 39th Terrace">15421 Southwest 39th Terrace</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,… <a href="#"> Know More </a> </p>
                                        <span class="price">$3,850 Per Month</span>
                                    </li>
                                    <li>
                                        <figure>
                                            <a href="#" title="700 Front Street, Key West, FL">
                                                <img src="<%=request.getContextPath() %>/User/img/property4.jpg"  alt="700 Front Street, Key West, FL" title="700 Front Street, Key West, FL">
                                            </a>
                                        </figure>
                                        <h4><a href="#" title="700 Front Street, Key West, FL">700 Front Street, Key West, FL</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,… <a href="#"> Know More </a> </p>
                                        <span class="price">$850,000 </span>
                                    </li>
                                    <li>
                                        <figure>
                                            <a href="#" title="401 Biscayne Boulevard, Miami">
                                                <img src="<%=request.getContextPath() %>/User/img/property5.jpg"  alt="401 Biscayne Boulevard, Miami" title="401 Biscayne Boulevard, Miami">
                                            </a>
                                        </figure>
                                        <h4><a href="#" title="401 Biscayne Boulevard, Miami">401 Biscayne Boulevard, Miami</a></h4>
                                        <p>Nam liber tempor cum soluta nobis eleifend option… <a href="#"> Know More </a> </p>
                                        <span class="price">$3,250 Per Month</span>
                                    </li>
                                    <li>
                                        <figure>
                                            <a href="#" title="3015 Grand Avenue, CocoWalk">
                                                <img  src="<%=request.getContextPath() %>/User/img/property2.jpg"  alt="3015 Grand Avenue, CocoWalk" title="3015 Grand Avenue, CocoWalk">
                                            </a>
                                        </figure>
                                        <h4><a href="#" title="3015 Grand Avenue, CocoWalk">3015 Grand Avenue, CocoWalk</a></h4>
                                        <p>Ut wisi enim ad minim veniam, quis nostrud… <a href="#"> Know More </a> </p>
                                        <span class="price">$4,350 Per Month</span>
                                    </li>
                                    <li>
                                        <figure>
                                            <a href="#" title="1200 Anastasia Avenue, Coral Gables">
                                                <img src="<%=request.getContextPath() %>/User/img/property1.jpg"  alt="1200 Anastasia Avenue, Coral Gables" title="1200 Anastasia Avenue, Coral Gables">
                                            </a>
                                        </figure>
                                        <h4><a href="#" title="1200 Anastasia Avenue, Coral Gables">1200 Anastasia Avenue, Coral Gables</a></h4>
                                        <p> <a href="#"> Know More </a> </p>
                                        <span class="price">$625,000 </span>
                                    </li>
                                    <li>
                                        <figure>
                                            <a href="#" title="60 Merrick Way, Miami">
                                                <img src="<%=request.getContextPath() %>/User/img/property4.jpg" alt="60 Merrick Way, Miami" title="60 Merrick Way, Miami">
                                            </a>
                                        </figure>
                                        <h4><a href="#" title="60 Merrick Way, Miami">60 Merrick Way, Miami</a></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,… <a href="#"> Know More </a> </p>
                                        <span class="price">$440,000 </span>
                                    </li>
                                    <li>
                                        <figure>
                                            <a href="#" title="Florida 5, Pinecrest, FL">
                                                <img src="<%=request.getContextPath() %>/User/img/property5.jpg"  alt="Florida 5, Pinecrest, FL" title="Florida 5, Pinecrest, FL">
                                            </a>
                                        </figure>
                                        <h4><a href="#" title="Florida 5, Pinecrest, FL">Florida 5, Pinecrest, FL</a></h4>
                                        <p>Nam liber tempor cum soluta nobis eleifend option… <a href="#"> Know More </a> </p>
                                        <span class="price">$480,000 </span>
                                    </li>
                                </ul>
                            </div>
                            <div class="es-nav"><span class="es-nav-prev"></span><span class="es-nav-next"></span></div></div>
                    </section><!-- End .eatured-properties-carousel -->

                </div><!-- End .main -->
            </div><!-- End span12 -->
        </div><!-- End .row -->
    </div><!-- End .contents -->



<jsp:include page="footer.jsp"></jsp:include>

                <script src="<%=request.getContextPath() %>/User/js/jquery.min.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.flexslider.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.easing.1.3.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.elastislide.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.prettyPhoto.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.swipebox.min.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.isotope.min.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.jcarousel.min.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.validate.min.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.form.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.selectbox.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery.transit.min.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/bootstrap.min.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/jquery-twitterFetcher.js"></script>
                <script src="<%=request.getContextPath() %>/User/js/custom.js"></script>

        </body>
</html>


