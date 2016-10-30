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
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Pages</a></li>
                    <li class="active">Nestable</li>
                </ul>
                <!-- END BREADCRUMB -->
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Nestable</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    
                    <div class="row">
                        <div class="col-md-12">
                            
                            <!-- NESTABLE -->                            
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Nestable List</h3>
                                    <p>Drag & drop hierarchical list with mouse and touch compatibility (jQuery plugin)</p>
                                    
                                    <div class="row">
                                        <div class="col-md-6">
                                            
                                            <div class="dd" id="nestable">
                                                <ol class="dd-list">
                                                    <li class="dd-item" data-id="1">
                                                        <div class="dd-handle">Item 1</div>
                                                    </li>
                                                    <li class="dd-item" data-id="2">
                                                        <div class="dd-handle">Item 2</div>
                                                        <ol class="dd-list">
                                                            <li class="dd-item" data-id="3"><div class="dd-handle">Item 3</div></li>
                                                            <li class="dd-item" data-id="4"><div class="dd-handle">Item 4</div></li>
                                                            <li class="dd-item" data-id="5">
                                                                <div class="dd-handle">Item 5</div>
                                                                <ol class="dd-list">
                                                                    <li class="dd-item" data-id="6"><div class="dd-handle">Item 6</div></li>
                                                                    <li class="dd-item" data-id="7"><div class="dd-handle">Item 7</div></li>
                                                                    <li class="dd-item" data-id="8"><div class="dd-handle">Item 8</div></li>
                                                                </ol>
                                                            </li>
                                                            <li class="dd-item" data-id="9"><div class="dd-handle">Item 9</div></li>
                                                            <li class="dd-item" data-id="10"><div class="dd-handle">Item 10</div></li>
                                                        </ol>
                                                    </li>
                                                    <li class="dd-item" data-id="11">
                                                        <div class="dd-handle">Item 11</div>
                                                    </li>
                                                    <li class="dd-item" data-id="12">
                                                        <div class="dd-handle">Item 12</div>
                                                    </li>
                                                </ol>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="dd" id="nestable2">
                                                <ol class="dd-list">
                                                    <li class="dd-item" data-id="13">
                                                        <div class="dd-handle">Item 13</div>
                                                    </li>
                                                    <li class="dd-item" data-id="14">
                                                        <div class="dd-handle">Item 14</div>
                                                    </li>
                                                    <li class="dd-item" data-id="15">
                                                        <div class="dd-handle">Item 15</div>
                                                        <ol class="dd-list">
                                                            <li class="dd-item" data-id="16"><div class="dd-handle">Item 16</div></li>
                                                            <li class="dd-item" data-id="17"><div class="dd-handle">Item 17</div></li>
                                                            <li class="dd-item" data-id="18"><div class="dd-handle">Item 18</div></li>
                                                        </ol>
                                                    </li>
                                                </ol>
                                            </div>
                                            
                                        </div>
                                    </div>
                                    
                                    <h3 class="push-up-20">Draggable Handles</h3>                                    
                                    <p>If you're clever with your CSS and markup this can be achieved without any JavaScript changes.</p>
                                    <div class="row">
                                        <div class="col-md-6">

                                            <div class="dd" id="nestable3">
                                                <ol class="dd-list">
                                                    <li class="dd-item dd3-item" data-id="13">
                                                        <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 13</div>
                                                    </li>
                                                    <li class="dd-item dd3-item" data-id="14">
                                                        <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 14</div>
                                                    </li>
                                                    <li class="dd-item dd3-item" data-id="15">
                                                        <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 15</div>
                                                        <ol class="dd-list">
                                                            <li class="dd-item dd3-item" data-id="16">
                                                                <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 16</div>
                                                            </li>
                                                            <li class="dd-item dd3-item" data-id="17">
                                                                <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 17</div>
                                                            </li>
                                                            <li class="dd-item dd3-item" data-id="18">
                                                                <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Item 18</div>
                                                            </li>
                                                        </ol>
                                                    </li>
                                                </ol>
                                            </div>                                            
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>                            
                            <!-- END NESTABLE -->

                        </div>
                    </div>
                                                            
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                       
                                
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

        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='js/icheck.min.js'></script>
        <script type="text/javascript" src="js/jquery.mCustomScrollbar.min.js"></script>                
        
        <script type="text/javascript" src="js/jquery.nestable.js"></script>
        <!-- END THIS PAGE PLUGINS-->        

        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/settings.js"></script>
        
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>
        <!-- END TEMPLATE -->
        
        <script>
            $(function(){
                $("#nestable").nestable({group: 1});
                $('#nestable2').nestable({group: 1});
                
                $('#nestable3').nestable();
            });
        </script>
        
    <!-- END SCRIPTS -->         
    </body>
</html>






    