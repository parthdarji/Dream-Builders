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
        <link href="<%=request.getContextPath()%>/User/css/bootstrap.css" rel="stylesheet" media="all">

        <!-- Include the Bootstrap responsive utitlities stylesheet -->
        <link href="<%=request.getContextPath()%>/User/css/_responsive-utilities.css" rel="stylesheet" media="all">

        <!-- Include the Awesome Font stylesheet -->
        <link href="<%=request.getContextPath()%>/User/css/font-awesome.min.css" rel="stylesheet" media="all">

        <!-- Include the bootstrap responsive stylesheet -->
        <link href="<%=request.getContextPath()%>/User/css/responsive.css" rel="stylesheet" media="all">

        <!-- Flexslider stylesheet -->
        <link href="<%=request.getContextPath()%>/User/js/flexslider/flexslider.css" rel="stylesheet" media="all">

        <!-- Pretty Photo stylesheet -->
        <link href="<%=request.getContextPath()%>/User/js/prettyphoto/prettyPhoto.css" rel="stylesheet" media="all">

        <!-- Pretty Photo stylesheet -->
        <link href="<%=request.getContextPath()%>/User/js/swipebox/swipebox.css" rel="stylesheet" media="all">

        <!-- Include the site main stylesheet -->
        <link href="<%=request.getContextPath()%>/User/css/main.css" rel="stylesheet" media="all">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>
    <body>


        <!-- Start Header -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Page Head -->
            <div class="page-head" style="background-repeat: no-repeat;background-position: center top;background-image: url('<%=request.getContextPath()%>/User/img/page-head-image.jpg'); ">
            <div class="container">
                <div class="wrap clearfix">
                    <h1 class="page-title"><span>Properties Listing</span></h1>
                    <p>All Properties Listing </p>
                </div>
            </div>
        </div>

        <!-- Content -->
        <div class="container contents lisitng-grid-layout">
            <div class="row">
                <div class="span9 main-wrap">

                    <!-- Main Content -->
                    <div class="main">

                        <section class="listing-layout">

                            <h3 class="title-heading">Listing</h3>

                            <div class="view-type clearfix">
                                <a class="list active" href="simple-listing.html"></a>
                                <a class="grid" href="grid-listing.html"></a>
                            </div>

                            <div class="list-container clearfix">

                                <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
                                <c:forEach items="${sessionScope.property }" var="a">

                                    
                                         
                                    <c:set value="${a[0]}" var="p"></c:set>
                                    <c:set value="${a[1]}" var="q"></c:set>

                                    <c:if test="${p.status eq 1 }">

                                        <div class="span6 ">
                                            <article class="property-item clearfix">

                                                <h4><a href="<%=request.getContextPath() %>/PropertyController?flag=fulldetail&id=${q.propertyId }" title="15421 Southwest 39th Terrace">${q.propertyName }</a></h4>

                                                <figure>
                                                    <a href="<%=request.getContextPath() %>/PropertyController?flag=fulldetail&id=${q.propertyId }" title="15421 Southwest 39th Terrace">
                                                       <img src="<%=request.getContextPath()%>/User/img/${p.path}" class="attachment-property-thumb-image wp-post-image" alt="15421 Southwest 39th Terrace" title="15421 Southwest 39th Terrace">
                                                    </a>
                                                    <figcaption>${q.type }  </figcaption>
                                                </figure>

                                                <div class="detail">
                                                    <h5 class="price">
                                                        <small> - Villa</small>
                                                    </h5>
                                                    <p>${q.propertyDesc }</p>

                                                </div>

                                                <div class="property-meta">
                                                    <span><i class="icon-area"></i>2800 sq ft&nbsp;</span><span><i class="icon-bed"></i>2&nbsp;Bedrooms</span><span><i class="icon-bath"></i>3&nbsp;Bathrooms</span><span><i class="icon-garage"></i>2&nbsp;Garages</span>
                                                </div>

                                            </article>
                                        </div>
                                    </c:if> 
                                    
                                    <c:if test="${p.status eq 2 }">

                                        <div class="span6 ">
                                            <article class="property-item clearfix">

                                                <h4><a href="<%=request.getContextPath() %>/PropertyController?flag=fulldetail&id=${q.propertyId }" title="15421 Southwest 39th Terrace">${q.propertyName }</a></h4>

                                                <figure>
                                                    <a href="<%=request.getContextPath() %>/PropertyController?flag=fulldetail&id=${q.propertyId }" title="15421 Southwest 39th Terrace">
                                                       <img src="<%=request.getContextPath()%>/User/img/${p.path}" class="attachment-property-thumb-image wp-post-image" alt="15421 Southwest 39th Terrace" title="15421 Southwest 39th Terrace">
                                                    </a>
                                                    <figcaption>${q.type }  </figcaption>
                                                </figure>

                                                <div class="detail">
                                                    <h5 class="price">
                                                        <small> - Villa</small>
                                                    </h5>
                                                    <p>${q.propertyDesc }</p>

                                                </div>

                                                <div class="property-meta">
                                                    <span><i class="icon-area"></i>2800 sq ft&nbsp;</span><span><i class="icon-bed"></i>2&nbsp;Bedrooms</span><span><i class="icon-bath"></i>3&nbsp;Bathrooms</span><span><i class="icon-garage"></i>2&nbsp;Garages</span>
                                                </div>

                                            </article>
                                        </div>
                                    </c:if> 
                                    <c:if test="${p.status eq 3 }">

                                        <div class="span6 ">
                                            <article class="property-item clearfix">

                                                <h4><a href="<%=request.getContextPath() %>/PropertyController?flag=fulldetail&id=${q.propertyId }" title="15421 Southwest 39th Terrace">${q.propertyName }</a></h4>

                                                <figure>
                                                    <a href="<%=request.getContextPath() %>/PropertyController?flag=fulldetail&id=${q.propertyId }" title="15421 Southwest 39th Terrace">
                                                       <img src="<%=request.getContextPath()%>/User/img/${p.path}" class="attachment-property-thumb-image wp-post-image" alt="15421 Southwest 39th Terrace" title="15421 Southwest 39th Terrace">
                                                    </a>
                                                    <figcaption>${q.type }  </figcaption>
                                                </figure>

                                                <div class="detail">
                                                    <h5 class="price">
                                                        <small> - Villa</small>
                                                    </h5>
                                                    <p>${q.propertyDesc }</p>

                                                </div>

                                                <div class="property-meta">
                                                    <span><i class="icon-area"></i>2800 sq ft&nbsp;</span><span><i class="icon-bed"></i>2&nbsp;Bedrooms</span><span><i class="icon-bath"></i>3&nbsp;Bathrooms</span><span><i class="icon-garage"></i>2&nbsp;Garages</span>
                                                </div>

                                            </article>
                                        </div>
                                    </c:if> 
                                    
                                    
                                    
                                    
                                </c:forEach>
                            </div>

                            <div class="pagination">.
                                <a href="#" class="real-btn current">1</a>
                                <a href="#" class="real-btn">2</a>
                            </div>
                        </section>

                    </div><!-- End Main Content -->

                </div> <!-- End span9 -->

                <!-- Sidebar -->
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

                <!-- End Sidebar -->

            </div><!-- End contents row -->

        </div>
        <!-- End Content -->



        <jsp:include page="footer.jsp"></jsp:include>

            <script src="<%=request.getContextPath()%>/User/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/flexslider/jquery.flexslider.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/elastislide/jquery.easing.1.3.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/elastislide/jquery.elastislide.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/prettyphoto/jquery.prettyPhoto.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/swipebox/jquery.swipebox.min.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/jquery.isotope.min.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/jquery.jcarousel.min.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/jquery.validate.min.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/jquery.form.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/jquery.selectbox.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/jquery.transit.min.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/jquery-twitterFetcher.js"></script>
        <script src="<%=request.getContextPath()%>/User/js/custom.js"></script>

    </body>
</html>


