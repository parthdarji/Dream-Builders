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
                    <li class="active">Address Book</li>
                </ul>
                <!-- END BREADCRUMB -->                                                
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-users"></span> Address Book <small>139 contacts</small></h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    
                    <div class="row">
                        <div class="col-md-12">
                            
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <p>Use search to find contacts. You can search by: name, address, phone. Or use the advanced search.</p>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-8">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <span class="fa fa-search"></span>
                                                    </div>
                                                    <input type="text" class="form-control" placeholder="Who are you looking for?"/>
                                                    <div class="input-group-btn">
                                                        <button class="btn btn-primary">Search</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <button class="btn btn-success btn-block"><span class="fa fa-plus"></span> Add new contact</button>
                                            </div>
                                        </div>
                                    </form>                                    
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="img/user3.jpg" alt="Nadia Ali"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Nadia Ali</div>
                                        <div class="profile-data-title">Singer-Songwriter</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br/>(555) 555-55-55</p>
                                        <p><small>Email</small><br/>nadiaali@domain.com</p>
                                        <p><small>Address</small><br/>123 45 Street San Francisco, CA, USA</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="img/user.jpg" alt="Dmitry Ivaniuk"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Dmitry Ivaniuk</div>
                                        <div class="profile-data-title">Web Developer / UI/UX Designer</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br/>(333) 333-33-22</p>
                                        <p><small>Email</small><br/>dmitry@domain.com</p>                                        
                                        <p><small>Address</small><br/>123 45 Street San Francisco, CA, USA</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="img/user2.jpg" alt="John Doe"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">John Doe</div>
                                        <div class="profile-data-title">Web Developer/Designer</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br/>(234) 567-89-12</p>
                                        <p><small>Email</small><br/>john@domain.com</p>
                                        <p><small>Address</small><br/>123 45 Street San Francisco, CA, USA</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="img/user4.jpg" alt="Brad Pitt"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Brad Pitt</div>
                                        <div class="profile-data-title">Actor and Film Producer</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br/>(321) 777-55-11</p>
                                        <p><small>Email</small><br/>brad@domain.com</p>
                                        <p><small>Address</small><br/>123 45 Street San Francisco, CA, USA</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="img/user5.jpg" alt="John Travolta"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">John Travolta</div>
                                        <div class="profile-data-title">Actor</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br/>(111) 222-33-78</p>
                                        <p><small>Email</small><br/>travolta@domain.com</p>
                                        <p><small>Address</small><br/>123 45 Street San Francisco, CA, USA</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="img/user6.jpg" alt="Darth Vader"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Darth Vader</div>
                                        <div class="profile-data-title">Cyborg</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br/>(000) 000-00-01</p>
                                        <p><small>Email</small><br/>vader@domain.com</p>
                                        <p><small>Address</small><br/>Somewhere deep in space</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="img/user7.jpg" alt="Samuel Leroy Jackson"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Samuel Leroy Jackson</div>
                                        <div class="profile-data-title">Actor and film producer</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br/>(552) 221-23-25</p>
                                        <p><small>Email</small><br/>samuel@domain.com</p>
                                        <p><small>Address</small><br/>123 45 Street San Francisco, CA, USA</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="img/no-image.jpg" alt="Samuel Leroy Jackson"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Alex Sonar</div>
                                        <div class="profile-data-title">Designer</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="pages-profile.html" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br/>(213) 428-74-13</p>
                                        <p><small>Email</small><br/>alex@domain.com</p>
                                        <p><small>Address</small><br/>123 45 Street San Francisco, CA, USA</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>                        
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="pagination pagination-sm pull-right push-down-10 push-up-10">
                                <li class="disabled"><a href="#">�</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>                                    
                                <li><a href="#">�</a></li>
                            </ul>                            
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
        <!-- END THIS PAGE PLUGINS-->        

        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/settings.js"></script>
        
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>        
        <!-- END TEMPLATE -->

    <!-- END SCRIPTS -->         
    </body>
</html>






    
    