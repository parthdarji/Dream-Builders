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
    <link href="<%=request.getContextPath() %>/User/css/bootstrap.css" rel="stylesheet" media="all">

    <!-- Include the Bootstrap responsive utitlities stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/_responsive-utilities.css" rel="stylesheet" media="all">

    <!-- Include the Awesome Font stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/font-awesome.min.css" rel="stylesheet" media="all">

    <!-- Include the bootstrap responsive stylesheet -->
    <link href="<%=request.getContextPath() %>/User/css/responsive.css" rel="stylesheet" media="all">

    <!-- Flexslider stylesheet -->
    <link href="<%=request.getContextPath() %>/User/js/flexslider/flexslider.css" rel="stylesheet" media="all">

    <!-- Pretty Photo stylesheet -->
    <link href="<%=request.getContextPath() %>/User/js/prettyphoto/prettyPhoto.css" rel="stylesheet" media="all">

    <!-- Pretty Photo stylesheet -->
    <link href="<%=request.getContextPath() %>/User/js/swipebox/swipebox.css" rel="stylesheet" media="all">

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

   <div class="panel panel-default">
<div id="divActivites" name="divActivites" style="border:thin">
                                <div class="form-group" align="center">
                                    <h3>Request   </h3>
                                                             
                               <form action="<%=request.getContextPath()%>/VisitorController?flag=insert" name="request" method="post" id="commentform" class="comment-form">
                               
                            <div>
                               First Name  <input id="password" name="firstname" type="text" value="" placeholder="Enter Your Name">
                              </div><br>
                               <div>
                               Last Name  <input id="password" name="lastname" type="text" value="" placeholder="Enter Your Name">
                              </div><br>
                              <div>
                               Country   : <select name="country" >
                               <option value="india">ind</option>
                               <option value="us">US</option>

                               </select>
                              </div>
                              <br>
                              <div>
                               State   : <select name="state">
                               <option value="gujarat">Gujarat</option>
                               <option value="punjab">Punjab</option>
                               <option value="nj">New Jursey</option>
                               <option value="cf"> Celefornia</option>
                               </select>
                              </div><br>
                              <div>
                               City   : <select name="city">
                               <option value="ahm">Ahmedabad</option>
                               <option value="gnr">Gandhinagar</option>
                               <option value="ny">New York</option>
                               <option value="amrt">Amritsar</option>
                                </select>
                              </div><br>
                            <div>
                               E-mail   :  <input id="password" name="email" type="email" value="" placeholder="Enter E-mail Id">
                              </div>
                              <br>
                            <div>
                               Contact No:  <input id="password" name="contact" type="number" value="" placeholder="Enter Contact No">
                              </div>
                              <br>
                  	
                                <input name="submit" type="submit" id="submit" value="Request" class="real-btn">
                               <!--  <p class="form-submit">
                                    
                                </p> -->
                                
                            </form>
                                                                                                                      
                                </div>
                                </div>
                            </div>


<jsp:include page="footer.jsp"></jsp:include>

<script src="<%=request.getContextPath() %>/User/js/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/User/js/flexslider/jquery.flexslider.js"></script>
<script src="<%=request.getContextPath() %>/User/js/elastislide/jquery.easing.1.3.js"></script>
<script src="<%=request.getContextPath() %>/User/js/elastislide/jquery.elastislide.js"></script>
<script src="<%=request.getContextPath() %>/User/js/prettyphoto/jquery.prettyPhoto.js"></script>
<script src="<%=request.getContextPath() %>/User/js/swipebox/jquery.swipebox.min.js"></script>
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


