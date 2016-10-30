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
    <script>
    function chechbid()
    {
    	alert("hi..u r in function");
		var xmlhttp;
		
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		
	
    	var div=document.getElementById("form");
    	var div2=document.getElementById("form2");
    	
    	xmlhttp.open("get", "${pageContext.request.contextPath}/BidController?flag=checkbid", true);
    	xmlhttp.send();
    	
    	alert("method called")
    	var a="${sessionScope.checkbid}";
    	alert("list got"+a);
	    if(a==0)
	    	{
	    	div.style.display="";
	    	}
	    else if(a>=1)
	    	{
	    	div2.style.display="";
	    	}
    }
    
    </script>
    
    
    </head>


</html>
<body>



<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
   <div class="panel panel-default">
   <br><br>

             
                                <div class="form-group" align="center" id="form2"  >
                                    <h3>Hey...!!You have already applied for a bid..!</h3>
           					  </div>                
                                <div class="form-group" align="center" id="form" style="display: none" >
                                    <h3>Hey...!!You showed intrested for bid.. Apply here</h3>
                                                                   
                                    <form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/BidController?flag=insertBid" method="post" name="bid" id="bid">
                                         	<br><br><br>
                                         	
                                         	<div>
                              
                               Property Name:&nbsp;&nbsp;  
                              <input type="text" name="title"  value="${sessionScope.name }" readonly="readonly">
                               
                              
                              </div> <br><br>
                              <div>
                               Base Price:&nbsp;&nbsp;&nbsp;  
                              <input type="text" name="baseprice1" value="${sessionScope.price }" readonly="readonly">
                               
                              </div> 
                              
                              <br><br>
                              Your Price:&nbsp;&nbsp;&nbsp;  
                              <input type="text" name="bidprice" placehlder="enter your price">
                               
                              
                              <input type="hidden" value="${sessionScope.id }" name="propertyId">
                              
                              <p class="form-submit" align="center">
                                    <input name="submit" id="submit" value="Submit" class="real-btn" type="submit" >
                                </p>  
                              
                              
                              </form></div> 
                              </div>
    </div>
    <br>
<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
    

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

