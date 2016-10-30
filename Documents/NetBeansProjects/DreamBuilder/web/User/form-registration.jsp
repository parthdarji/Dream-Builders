<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<head>
    <meta charset="utf-8">

    <title>Real Homes</title>
    <link rel="shortcut icon" href="img/favicon.png" />
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

function fnamevalidate()
{
 var a=document.getElementById("fname");
 var b=document.getElementById("fname1");


 if(a.value=="")
	 {
	 	b.style.display="";
	 }
 else if(a.value!="")
	 {
	 	b.style.display="none";
	 }
 
}
function fnamevalidate2()
{
	var c=document.getElementById("country");
	var d=document.getElementById("country1");
	if(c.value=="")
	{
		d.style.display="";
	}
	 else if(c.value!="")
	 {
	 	d.style.display="none";
	 }
 
 
}
function fnamevalidate3()
{
	var c=document.getElementById("state");
	var d=document.getElementById("state1");
	if(c.value=="")
	{
		d.style.display="";
	}
	else if(c.value!="")
	 {
	 	d.style.display="none";
	 }
 
}function fnamevalidate4()
{
	var c=document.getElementById("city");
	var d=document.getElementById("city1");
	if(c.value=="")
	{
		d.style.display="";
	}
	else if(c.value!="")
	 {
	 	d.style.display="none";
	 }
 
}
function fnamevalidate1()
{
	var c=document.getElementById("lname");
	var d=document.getElementById("lname1");
	if(c.value=="")
	{
		d.style.display="";
	}
	else if(c.value!="")
	 {
	 	d.style.display="none";
	 }
 
}
function fnamevalidate5()
{
	var c=document.getElementById("area");
	var d=document.getElementById("area1");
	if(c.value=="")
	{
		d.style.display="";
	}
	else if(c.value!="")
	 {
	 	d.style.display="none";
	 }
 
}
function fnamevalidate6()
{

	var c=document.getElementById("date");
	var d=document.getElementById("date1");
	if(c.value=="")
	{
		d.style.display="";
	}
	else if(c.value!="")
	 {
	 	d.style.display="none";
	 }
 
}
function fnamevalidate7()
{
	var c=document.getElementById("number");
	var d=document.getElementById("number1");
	if(c.value=="")
	{
		d.style.display="";
	}
	else if(c.value!="")
	 {
	 	d.style.display="none";
	 }
 
}
function fnamevalidate8()
{
	var c=document.getElementById("email");
	var d=document.getElementById("email1");
	if(c.value=="")
	{
		d.style.display="";
	}
	else if(c.value!="")
	 {
	 	d.style.display="none";
	 }
 
}
function fnamevalidate9()
{
	var c=document.getElementById("password");
	var d=document.getElementById("password1");
	if(c.value=="")
	{
		d.style.display="";
	}
	else if(c.value!="")
	 {
	 	d.style.display="none";
	 }
 
}



</script>
</head>
<body  style="background-image:url('<%=request.getContextPath()%>/User/img/property1.jpg');rep">


<!-- Start Header -->
<!-- Start Header -->
<%-- <jsp:include page="header.jsp"></jsp:include> --%>

   <div class="panel panel-default" >
					
                                <div class="form-group" align="center">
                                    <h3>Customer Registration Form:</h3>
                                                                   
                                    <form  class="form-horizontal" role="form" action="RegistrationController?flag=insert" method="post" name="registration" id="registration">
                                         	
                                         <div style="color: black">
                               First Name&nbsp;&nbsp;&nbsp;  <input id="fname" name="firstname" value="" placeholder="Enter Your Name" type="text" onblur="fnamevalidate()">
                              </div> 
                              <div><span id="fname1" style="display: none; color: red">Value can not be null</span></div>                                       
                               <br>
                               <div style="color: black">
                               Last Name&nbsp;&nbsp;&nbsp;  <input id="lname" name="lastname" value="" placeholder="Enter Your Name" type="text" onblur="fnamevalidate1()" >
                              </div>        
                              <div><span id="lname1" style="display: none; color: red">Value can not be null</span></div>
                              <br>
                               <div style="color: black">
                               Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input value="Male" name="gender" type="radio" checked="checked">&nbsp;Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input value="Female" name="gender" type="radio">Female
                               </div> 
                                    <br>  
                                      <h5>Address</h5>
                                        
                                        <div style="color: black">
                               Country   : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input id="country" name="country" value="" placeholder="Enter your Country" type="text" onblur="fnamevalidate2()">
                              </div>
                              <div><span id="country1" style="display: none; color: red">Value can not be null</span></div>
                              
                              <br>
                              <div style="color: black">
                               State   :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  id="state" name="state" value="" placeholder="Enter your State" type="text" onblur="fnamevalidate3()">
                               <div><span id="state1" style="display: none; color: red">Value can not be null</span></div>
                              
                              </div><br>
                              <div style="color: black">
                               City   : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input id="city" name="city" value="" placeholder="Enter your City" type="text" onblur="fnamevalidate4()">
                              
                              </div>
                              <div style="color: black"><span id="city1" style="display: none; color: red">Value can not be null</span></div>
                              <br>
                              <div style="color: black"> 
                               Area:&nbsp;&nbsp;&nbsp; <input id="area" name="city" value="" placeholder="Enter your Area" type="text" onblur="fnamevalidate5()">
                              </div>
                              <br>
                              <div style="color: black"><span id="area1" style="display: none; color: red">Value can not be null</span></div>
                                <br>    
                               <div style="color: black">
                               Birth Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input id="date" name="date" value="" placeholder="DD/MM/YYYY" type="date"  onblur="fnamevalidate6()">
                              </div>  
 							 <br>
 							  <div style="color: black"><span id="date1" style="display: none; color: red">Value can not be null</span></div>
 							  <br>
							<div style="color: black">
                               Mobile No:&nbsp;&nbsp;&nbsp;<input id="number" name="contact" value="" placeholder="Enter Your Number" type="number" onblur="fnamevalidate7()">
                              </div>                     
      							  <br> 
      							  <div style="color: black"><span id="number1" style="display: none; color: red">Value can not be null</span></div>
      							  <br>                                
                                   <div style="color: black">
                               E-mail ID&nbsp;&nbsp;&nbsp;  <input id="email" name="email" value="" placeholder="Enter Your E-mailID" type="email" onblur="fnamevalidate8()">
                              </div>
                              <br>
                              <div style="color: black"><span id="email1" style="display: none; color: red">Value can not be null</span></div>
                              <br>
                               <div style="color: black">
                               Password&nbsp;&nbsp;&nbsp;  <input id="password" name="password" value="" placeholder="password" type="password" onblur="fnamevalidate9()">
                              </div> 
                              <br>
                              <div style="color: black"><span id="password1" style="display: none; color: red">Value can not be null</span></div> 
                              <br>       
           				           <div>
                               &nbsp;&nbsp;&nbsp;  <input id="type" name="regtype" value="user"  type="hidden">
                              </div>         
           								
                                        <br>     
                                        <input name="submit" id="submit" value="Submit" class="real-btn" type="submit">
<!--                                     <p class="form-submit"> -->
                                    
<!--                                 </p>                                        -->
                                        
                                                                   
                                    </form>  
                                                                                                                           
                                </div>
                         
                            </div>


<%-- <jsp:include page="footer.jsp"></jsp:include> --%>

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





</body></html>


