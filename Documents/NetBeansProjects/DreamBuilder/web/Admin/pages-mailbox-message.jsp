<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <!-- META SECTION -->
        <title>Atlant - Responsive Bootstrap Admin Template</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
        <!-- EOF CSS INCLUDE -->                                     
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            
            <!-- START PAGE SIDEBAR -->
            <jsp:include page="menu.jsp"></jsp:include>
            <!-- END PAGE SIDEBAR -->
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
                <!-- START X-NAVIGATION VERTICAL -->
                <jsp:include page="header.jsp"></jsp:include>
                <!-- END X-NAVIGATION VERTICAL -->                     
                
                <!-- START BREADCRUMB -->
                <ul class="breadcrumb push-down-0">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Pages</a></li>                    
                    <li class="active">Messages</li>
                </ul>
                <!-- END BREADCRUMB -->                
                                
                <!-- START CONTENT FRAME -->
                <div class="content-frame">                                    
                    <!-- START CONTENT FRAME TOP -->
                    <div class="content-frame-top">                        
                        <div class="page-title">                    
                            <h2><span class="fa fa-comments"></span> Messages</h2>
                        </div>                                                    
                        <div class="pull-right">                            
                            <button class="btn btn-danger"><span class="fa fa-book"></span> Contacts</button>
                            <button class="btn btn-default content-frame-right-toggle"><span class="fa fa-bars"></span></button>
                        </div>                           
                    </div>
                    <!-- END CONTENT FRAME TOP -->
                    
                    <!-- START CONTENT FRAME RIGHT -->
                    <div class="content-frame-right">
                        
                        <div class="list-group list-group-contacts border-bottom push-down-10">
                            <a href="#" class="list-group-item">                                 
                                <div class="list-group-status status-online"></div>
                                <img src="img/user.jpg" class="pull-left" alt="Dmitry Ivaniuk">
                                <span class="contacts-title">Dmitry Ivaniuk</span>
                                <p>Hello my friend, how are...</p>
                            </a>                                
                            <a href="#" class="list-group-item">                                    
                                <div class="list-group-status status-online"></div>
                                <img src="img/user3.jpg" class="pull-left" alt="Nadia Ali">
                                <span class="contacts-title">Nadia Ali</span>
                                <p>Wanna se my photos?</p>
                            </a>                                                                
                            <a href="#" class="list-group-item active">         
                                <div class="list-group-status status-online"></div>
                                <img src="img/user2.jpg" class="pull-left" alt="John Doe">
                                <div class="contacts-title">John Doe <span class="label label-danger">5</span></div>
                                <p>This project is awesome</p>                                       
                            </a>
                            <a href="#" class="list-group-item">         
                                <div class="list-group-status status-away"></div>
                                <img src="img/user4.jpg" class="pull-left" alt="Brad Pitt">
                                <span class="contacts-title">Brad Pitt</span>
                                <p>ok</p>                     
                            </a>
                            <a href="#" class="list-group-item">         
                                <div class="list-group-status status-offline"></div>
                                <img src="img/no-image.jpg" class="pull-left" alt="Darth Vader">
                                <span class="contacts-title">Darth Vader</span>
                                <p>We should win this war!!!1</p>
                            </a>
                            <a href="#" class="list-group-item">         
                                <div class="list-group-status status-offline"></div>
                                <img src="img/no-image.jpg" class="pull-left" alt="Kim Kardashian">
                                <span class="contacts-title">Kim Kardashian</span>
                                <p>You received a letter from Darth?</p>
                            </a>
                            <a href="#" class="list-group-item">         
                                <div class="list-group-status status-offline"></div>
                                <img src="img/no-image.jpg" class="pull-left" alt="Jason Statham">
                                <span class="contacts-title">Jason Statham</span>
                                <p>Lets play chess...</p>
                            </a>                            
                        </div>
                        
                        <div class="block">
                            <h4>Status</h4>
                            <div class="list-group list-group-simple">                                
                                <a href="#" class="list-group-item"><span class="fa fa-circle text-success"></span> Online</a>
                                <a href="#" class="list-group-item"><span class="fa fa-circle text-warning"></span> Away</a>
                                <a href="#" class="list-group-item"><span class="fa fa-circle text-muted"></span> Offline</a>                                
                            </div>
                        </div>
                        
                    </div>
                    <!-- END CONTENT FRAME RIGHT -->
                
                    <!-- START CONTENT FRAME BODY -->
                    <div class="content-frame-body content-frame-body-left">
                        
                        <div class="messages messages-img">
                            <div class="item in">
                                <div class="image">
                                    <img src="img/user2.jpg" alt="John Doe">
                                </div>
                                <div class="text">
                                    <div class="heading">
                                        <a href="#">John Doe</a>
                                        <span class="date">08:33</span>
                                    </div>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis suscipit eros vitae iaculis.
                                </div>
                            </div>
                            <div class="item">
                                <div class="image">
                                    <img src="img/user.jpg" alt="Dmitry Ivaniuk">
                                </div>                                
                                <div class="text">
                                    <div class="heading">
                                        <a href="#">Dmitry Ivaniuk</a>
                                        <span class="date">08:39</span>
                                    </div>                                    
                                    Integer et ipsum vitae urna mattis dictum. Sed eu sollicitudin nibh, in luctus velit.
                                </div>
                            </div>
                            <div class="item">
                                <div class="image">
                                    <img src="img/user.jpg" alt="Dmitry Ivaniuk">
                                </div>                                
                                <div class="text">
                                    <div class="heading">
                                        <a href="#">Dmitry Ivaniuk</a>
                                        <span class="date">08:42</span>
                                    </div>                                    
                                    In dapibus ex ut nisl laoreet aliquam. Donec in mollis leo. Aenean nec suscipit neque, non iaculis justo. Quisque eget odio efficitur, porta risus vitae, sagittis neque.
                                </div>
                            </div>
                            <div class="item in">
                                <div class="image">
                                    <img src="img/user2.jpg" alt="John Doe">
                                </div>
                                <div class="text">
                                    <div class="heading">
                                        <a href="#">John Doe</a>
                                        <span class="date">08:58</span>
                                    </div>
                                    Curabitur et euismod urna?
                                </div>
                            </div>
                            <div class="item">
                                <div class="image">
                                    <img src="img/user.jpg" alt="Dmitry Ivaniuk">
                                </div>                                
                                <div class="text">
                                    <div class="heading">
                                        <a href="#">Dmitry Ivaniuk</a>
                                        <span class="date">09:11</span>
                                    </div>                                    
                                    Fusce ultricies erat quis massa interdum, eu elementum urna iaculis
                                </div>
                            </div>
                            <div class="item in">
                                <div class="image">
                                    <img src="img/user2.jpg" alt="John Doe">
                                </div>
                                <div class="text">
                                    <div class="heading">
                                        <a href="#">John Doe</a>
                                        <span class="date">09:22</span>
                                    </div>
                                    Vestibulum cursus ipsum ut dolor vulputate dapibus. Donec elementum est vel vulputate malesuada?
                                </div>
                            </div>
                        </div>                        
                        
                        <div class="panel panel-default push-up-10">
                            <div class="panel-body panel-body-search">
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default"><span class="fa fa-camera"></span></button>
                                        <button class="btn btn-default"><span class="fa fa-chain"></span></button>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Your message..."/>
                                    <div class="input-group-btn">
                                        <button class="btn btn-default">Send</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <!-- END CONTENT FRAME BODY -->      
                </div>
                <!-- END PAGE CONTENT FRAME -->
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
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
        <audio id="audio-alert" src="img/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="img/fail.mp3" preload="auto"></audio>
        <!-- END PRELOADS -->                        
        
    <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>        
        <!-- END PLUGINS -->

        <!-- THIS PAGE PLUGINS -->
        <script type='text/javascript' src='js/icheck.min.js'></script>
        <script type="text/javascript" src="js/jquery.mCustomScrollbar.min.js"></script>
        <!-- END PAGE PLUGINS -->     

        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/settings.js"></script>
        
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>        
        <!-- END TEMPLATE -->
    <!-- END SCRIPTS -->         
    </body>
</html>






    