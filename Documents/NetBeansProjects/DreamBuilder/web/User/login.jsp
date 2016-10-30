<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <!-- META SECTION -->
        <title>Login Page</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="icon" href="favicon.ico" type="<%=request.getContextPath()%>/Admin/img/Adminimg/x-icon" />
        <!-- END META SECTION -->

        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="<%=request.getContextPath()%>/Admin/css/theme-default.css"/>
        <!-- EOF CSS INCLUDE -->                                
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
        <!-- <div class="page-container page-navigation-toggled"> -->

        <!-- START PAGE SIDEBAR -->
        <%--  <jsp:include page="Admin/menu.jsp"></jsp:include> --%>
        <!-- END PAGE SIDEBAR -->

        <!-- PAGE CONTENT -->
        <div class="page-content">

            <!-- START X-NAVIGATION VERTICAL -->
            <%--   <jsp:include page="Admin/header.jsp"></jsp:include> --%>
            <!-- END X-NAVIGATION VERTICAL -->                    

            <!-- START BREADCRUMB -->
            <!-- <ul class="breadcrumb push-down-0">
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active">Login</li>
            </ul> -->
            <!-- END BREADCRUMB -->                                                

            <!-- PAGE CONTENT WRAPPER -->
            <div class="page-content-wrap">

                <div class="row">
                    <div class="col-md-12">

                        <div class="login-container login-v2">

                            <div class="login-box animated fadeInDown">
                                <div class="login-body">
                                    <div class="login-title"><strong>Welcome</strong>, Please login.</div>
                                    <form action="index.jsp" class="form-horizontal" method="post">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <span class="fa fa-user"></span>
                                                    </div>
                                                    <input type="text" class="form-control" name="email" placeholder="Username"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <span class="fa fa-lock"></span>
                                                    </div>                                
                                                    <input type="password" class="form-control" placeholder="Password" name="password"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <a href="#" onclick="myFunction()">Forgot your password?</a>
                                            </div>  

                                            <script>
                                                function myFunction() {
                                                    var email = prompt("Please enter Your Email Id", "email");
                                                    alert(email);
                                                    if (email != null) {
                                                        var xmlhttp = new XMLHttpRequest();


                                                        xmlhttp.open("get", "${pageContext.request.contextPath}/forgotpasswordController?emailId=" + email, true);
                                                        xmlhttp.send();

                                                    }
                                                }
                                            </script>

                                            <div class="col-md-6 text-right">
                                                <a href="form-registration.jsp">Create an account</a>
                                            </div>              
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <button class="btn btn-primary btn-lg btn-block">Login</button>
                                            </div>
                                        </div>
                                        <input type="hidden" name="flag" value="login">
                                    </form>
                                </div>                                    
                            </div>

                        </div>

                    </div>
                </div>


            </div>                
            <!-- END PAGE CONTENT WRAPPER -->                
        </div>            
        <!-- END PAGE CONTENT -->

        <!-- END PAGE CONTAINER -->

        <!-- MESSAGE BOX-->
        <div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-sign-out"></span> Log <strong>Out</strong> ?</div>
                    <div class="mb-content">
                        <p>Are you sure you want to log out?</p>                    
                        <p>Press No if youwant to continue work. Press Yes to logout current user.</p>
                    </div>
                    <div class="mb-footer">
                        <div class="pull-right">
                            <a href="pages-login.html" class="btn btn-success btn-lg">Yes</a>
                            <button class="btn btn-default btn-lg mb-control-close">No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MESSAGE BOX-->

        <!-- START PRELOADS -->
        <audio id="audio-alert" src="<%=request.getContextPath()%>/Admin/img/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="<%=request.getContextPath()%>/Admin/img/fail.mp3" preload="auto"></audio>
        <!-- END PRELOADS -->          

        <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="<%=request.getContextPath()%>/Admin/js/jquery.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/Admin/js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/Admin/js/bootstrap.min.js"></script>        
        <!-- END PLUGINS -->

        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='<%=request.getContextPath()%>/Admin/js/icheck.min.js'></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/Admin/js/jquery.mCustomScrollbar.min.js"></script>
        <!-- END THIS PAGE PLUGINS-->        

        <!-- START TEMPLATE -->
        <script type="text/javascript" src="<%=request.getContextPath()%>/Admin/js/settings.js"></script>

        <script type="text/javascript" src="<%=request.getContextPath()%>/Admin/js/plugins.js"></script>        
        <script type="text/javascript" src="<%=request.getContextPath()%>/Admin/js/actions.js"></script>        
        <!-- END TEMPLATE -->

        <!-- END SCRIPTS -->         
    </body>
</html>