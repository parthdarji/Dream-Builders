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
                    <li class="active">Profile</li>
                </ul>
                <!-- END BREADCRUMB -->                                                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    
                    <div class="row">
                        <div class="col-md-3">
                            
                            <div class="panel panel-default">
                                <div class="panel-body profile" style="background: url('assets/images/gallery/music-4.jpg') center center no-repeat;">
                                    <div class="profile-image">
                                        <img src="img/user3.jpg" alt="Nadia Ali"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Nadia Ali</div>
                                        <div class="profile-data-title" style="color: #FFF;">Singer-Songwriter</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left twitter"><span class="fa fa-twitter"></span></a>
                                        <a href="#" class="profile-control-right facebook"><span class="fa fa-facebook"></span></a>
                                    </div>                                    
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="row">
                                        <div class="col-md-6">
                                            <button class="btn btn-info btn-rounded btn-block"><span class="fa fa-check"></span> Following</button>
                                        </div>
                                        <div class="col-md-6">
                                            <button class="btn btn-primary btn-rounded btn-block"><span class="fa fa-comments"></span> Chat</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body list-group border-bottom">
                                    <a href="#" class="list-group-item active"><span class="fa fa-bar-chart-o"></span> Activity</a>
                                    <a href="#" class="list-group-item"><span class="fa fa-coffee"></span> Groups <span class="badge badge-default">18</span></a>                                
                                    <a href="#" class="list-group-item"><span class="fa fa-users"></span> Friends <span class="badge badge-danger">+7</span></a>
                                    <a href="#" class="list-group-item"><span class="fa fa-folder"></span> Apps</a>
                                    <a href="#" class="list-group-item"><span class="fa fa-cog"></span> Settings</a>
                                </div>
                                <div class="panel-body">
                                    <h4 class="text-title">Friends</h4>
                                    <div class="row">
                                        <div class="col-md-4 col-xs-4">
                                            <a href="#" class="friend">
                                                <img src="img/user.jpg"/>
                                                <span>Dmitry Ivaniuk</span>
                                            </a>                                            
                                        </div>
                                        <div class="col-md-4 col-xs-4">                                            
                                            <a href="#" class="friend">
                                                <img src="img/user2.jpg"/>
                                                <span>John Doe</span>
                                            </a>                                            
                                        </div>
                                        <div class="col-md-4 col-xs-4">                                            
                                            <a href="#" class="friend">
                                                <img src="img/user4.jpg"/>
                                                <span>Brad Pit</span>
                                            </a>                                            
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4 col-xs-4">                                            
                                            <a href="#" class="friend">
                                                <img src="img/user5.jpg"/>
                                                <span>John Travolta</span>
                                            </a>                                            
                                        </div>
                                        <div class="col-md-4 col-xs-4">                                            
                                            <a href="#" class="friend">
                                                <img src="img/user6.jpg"/>
                                                <span>Darth Vader</span>
                                            </a>                                            
                                        </div>
                                        <div class="col-md-4 col-xs-4">                                            
                                            <a href="#" class="friend">
                                                <img src="img/user7.jpg"/>
                                                <span>Samuel Leroy Jackson</span>
                                            </a>                                            
                                        </div>
                                    </div>
                                
                                    <h4 class="text-title">Photos</h4>
                                    <div class="gallery" id="links">                                                
                                        <a href="assets/images/gallery/music-1.jpg" title="Music Image 1" class="gallery-item" data-gallery>
                                            <div class="image">
                                                <img src="img/music-1.jpg" alt="Music Image 1"/>
                                            </div>                                            
                                        </a>
                                        <a href="img/music-2.jpg" title="Music Image 2" class="gallery-item" data-gallery>
                                            <div class="image">
                                                <img src="img/music-2.jpg" alt="Music Image 2"/>
                                            </div>                                            
                                        </a>
                                        <a href="img/music-3.jpg" title="Music Image 3" class="gallery-item" data-gallery>
                                            <div class="image">
                                                <img src="img/music-3.jpg" alt="Music Image 3"/>
                                            </div>                                            
                                        </a>
                                        <a href="img/nature-1.jpg" title="Nature Image 1" class="gallery-item" data-gallery>
                                            <div class="image">
                                                <img src="img/nature-1.jpg" alt="Nature Image 1"/>
                                            </div>                                            
                                        </a>
                                        <a href="img/nature-2.jpg" title="Nature Image 2" class="gallery-item" data-gallery>
                                            <div class="image">
                                                <img src="img/nature-2.jpg" alt="Nature Image 2"/>
                                            </div>                                            
                                        </a>
                                        <a href="img/nature-3.jpg" title="Nature Image 3" class="gallery-item" data-gallery>
                                            <div class="image">
                                                <img src="img/nature-3.jpg" alt="Nature Image 3"/>
                                            </div>                                            
                                        </a>
                                        <a href="img/nature-4.jpg" title="Nature Image 4" class="gallery-item" data-gallery>
                                            <div class="image">
                                                <img src="img/nature-4.jpg" alt="Nature Image 4"/>
                                            </div>                                            
                                        </a>
                                        <a href="img/nature-5.jpg" title="Nature Image 5" class="gallery-item" data-gallery>
                                            <div class="image">
                                                <img src="img/nature-5.jpg" alt="Nature Image 5"/>
                                            </div>                                            
                                        </a>                                        
                                    </div>
                                </div>
                            </div>                            
                            
                        </div>
                        
                        <div class="col-md-9">

                            <!-- START TIMELINE -->
                            <div class="timeline timeline-right">
                                
                                <!-- START TIMELINE ITEM -->
                                <div class="timeline-item timeline-main">
                                    <div class="timeline-date">Today</div>
                                </div>
                                <!-- END TIMELINE ITEM -->                                                  
                                
                                <!-- START TIMELINE ITEM -->
                                <div class="timeline-item timeline-item-right">
                                    <div class="timeline-item-info">21:37</div>
                                    <div class="timeline-item-icon"><span class="fa fa-users"></span></div>                                   
                                    <div class="timeline-item-content">
                                        <div class="timeline-heading" style="padding-bottom: 10px;">
                                            <img src="imguser3.jpg"/>
                                            <a href="#">Nadia Ali</a> added to friends 
                                            <img src="img/user2.jpg"/>
                                            <img src="img/user.jpg"/>
                                            <img src="img/user4.jpg"/>
                                        </div>                                        
                                        <div class="timeline-body comments">
                                            <div class="comment-item">
                                                <img src="img/user.jpg"/>
                                                <p class="comment-head">
                                                    <a href="#">Dmitry Ivaniuk</a> <span class="text-muted">@Aqvatarius</span>
                                                </p>
                                                <p>Thank you so much... I would like to meet you :)</p>
                                                <small class="text-muted">15min ago</small>
                                            </div>                                            
                                            <div class="comment-item">
                                                <img src="img/user3.jpg"/>
                                                <p class="comment-head">
                                                    <a href="#">Nadia Ali</a> <span class="text-muted">@nadiaAli</span>
                                                </p>
                                                <p>Sure, i will contact you ;)</p>
                                                <small class="text-muted">16min ago</small>
                                            </div>                                            
                                            <div class="comment-write">                                                
                                                <textarea class="form-control" placeholder="Write a comment" rows="1"></textarea>                                                
                                            </div>
                                        </div>
                                    </div>                                    
                                </div>       
                                <!-- END TIMELINE ITEM -->

                                <!-- START TIMELINE ITEM -->
                                <div class="timeline-item timeline-item-right">
                                    <div class="timeline-item-info">20:23</div>
                                    <div class="timeline-item-icon"><span class="fa fa-reply"></span></div>                                   
                                    <div class="timeline-item-content">
                                        <div class="timeline-heading padding-bottom-0">
                                            <img src="img/user2.jpg"/> <a href="#">John Doe</a> posted article <a href="#">How to...?</a>
                                        </div>                                        
                                        <div class="timeline-body">                                                                                        
                                            <img src="img/nature-6.jpg" width="200" class="img-text" align="left"/> 
                                            <h4>Lorem ipsum dolor</h4>
                                            <p>Aenean ultricies condimentum pellentesque. Maecenas pulvinar arcu vel tortor aliquet commodo. Phasellus dapibus nisl quis nunc pharetra, id lobortis arcu sagittis. Nunc facilisis nibh non diam dictum, vitae iaculis tellus egestas. Curabitur vitae dui tempus, tempus metus vitae, cursus nunc. In cursus odio vitae metus commodo, in posuere ante varius.</p> 
                                            <p>Mauris sodales faucibus est, eu consequat dolor tristique in. Quisque at lacus sed ligula semper iaculis. In eu imperdiet ipsum. Ut vestibulum ornare venenatis.</p>           
                                            <ul class="list-tags push-up-10">                                            
                                                <li><a href="#"><strong>#</strong>tempor</a></li>
                                                <li><a href="#"><strong>#</strong>eros</a></li>
                                                <li><a href="#"><strong>#</strong>suspendisse</a></li>
                                                <li><a href="#"><strong>#</strong>dolor</a></li>
                                            </ul>
                                        </div>                
                                        <div class="timeline-footer">
                                            <a href="#">Details</a>
                                            <div class="pull-right">
                                                <a href="#"><span class="fa fa-comments"></span> 35</a> 
                                                <a href="#"><span class="fa fa-eye"></span> 1,432</a>
                                            </div>
                                        </div>
                                    </div>                                    
                                </div>       
                                <!-- END TIMELINE ITEM -->                                                                
                                
                                <!-- START TIMELINE ITEM -->
                                <div class="timeline-item timeline-main">
                                    <div class="timeline-date">Yesterday</div>
                                </div>
                                <!-- END TIMELINE ITEM -->                                
                                
                                <!-- START TIMELINE ITEM -->
                                <div class="timeline-item timeline-item-right">
                                    <div class="timeline-item-info">20:23</div>
                                    <div class="timeline-item-icon"><span class="fa fa-info-circle"></span></div>                                   
                                    <div class="timeline-item-content">
                                        <div class="timeline-heading padding-bottom-0">
                                            <img src="img/user3.jpg"/> <a href="#">Nadia Ali</a> changed status to:
                                        </div>                                        
                                        <div class="timeline-body">                                            
                                            <i>Peace Will Come, This World Will Rest, Once We Have Togetherness</i>
                                        </div>                                               
                                    </div>                                    
                                </div>       
                                <!-- END TIMELINE ITEM -->                                
                                
                                <!-- START TIMELINE ITEM -->
                                <div class="timeline-item timeline-item-right">
                                    <div class="timeline-item-info">18:34</div>
                                    <div class="timeline-item-icon"><span class="fa fa-photo"></span></div>                                   
                                    <div class="timeline-item-content">
                                        <div class="timeline-heading">
                                            <img src="img/user3.jpg"/> <a href="#">Nadia Ali</a> added images to gallery
                                        </div>
                                        <div class="timeline-body">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <a href="#">
                                                        <img src="img/music-2.jpg" class="img-responsive img-text"/>
                                                    </a>
                                                </div>
                                                <div class="col-md-3">
                                                    <a href="#">
                                                        <img src="img/music-3.jpg" class="img-responsive img-text"/>
                                                    </a>                                                    
                                                </div>
                                                <div class="col-md-3">
                                                    <a href="#">
                                                        <img src="img/space-1.jpg" class="img-responsive img-text"/>
                                                    </a>                                                    
                                                </div>
                                                <div class="col-md-3">
                                                    <a href="#">
                                                        <img src="img/space-2.jpg" class="img-responsive img-text"/>
                                                    </a>                                                    
                                                </div>
                                            </div>
                                            <ul class="list-tags push-up-10">                                            
                                                <li><a href="#"><strong>#</strong>tempor</a></li>
                                                <li><a href="#"><strong>#</strong>eros</a></li>
                                                <li><a href="#"><strong>#</strong>suspendisse</a></li>
                                                <li><a href="#"><strong>#</strong>dolor</a></li>
                                            </ul>                                            
                                        </div>
                                    </div>                                    
                                </div>       
                                <!-- END TIMELINE ITEM -->
                                
                                <!-- START TIMELINE ITEM -->
                                <div class="timeline-item timeline-item-right">
                                    <div class="timeline-item-info">15:21</div>
                                    <div class="timeline-item-icon"><span class="fa fa-users"></span></div>                                   
                                    <div class="timeline-item-content">
                                        <div class="timeline-heading" style="padding-bottom: 10px;">
                                            <img src="img/user3.jpg"/>
                                            <a href="#">Nadia Ali</a> added to friends 
                                            <img src="img/user5.jpg"/>
                                            <img src="img/user6.jpg"/>
                                            <img src="img/user7.jpg"/>
                                        </div>                                        
                                        <div class="timeline-body comments">
                                            <div class="comment-item">
                                                <img src="img/user6.jpg"/>
                                                <p class="comment-head">
                                                    <a href="#">Darth Vader</a> <span class="text-muted">@darthvader</span>
                                                </p>
                                                <p>Hello, honey!</p>
                                                <small class="text-muted">15min ago</small>
                                            </div>                                                                                                                        
                                            <div class="comment-write">                                                
                                                <textarea class="form-control" placeholder="Write a comment" rows="1"></textarea>                                                
                                            </div>
                                        </div>
                                    </div>                                    
                                </div>       
                                <!-- END TIMELINE ITEM -->

                                
                                <!-- START TIMELINE ITEM -->
                                <div class="timeline-item timeline-main">
                                    <div class="timeline-date"><a href="#"><span class="fa fa-ellipsis-h"></span></a></div>
                                </div>                                
                                <!-- END TIMELINE ITEM -->
                            </div>
                            <!-- END TIMELINE -->                            
                            
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

        <!-- BLUEIMP GALLERY -->
        <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
            <div class="slides"></div>
            <h3 class="title"></h3>
            <a class="prev">‹</a>
            <a class="next">›</a>
            <a class="close">×</a>
            <a class="play-pause"></a>
            <ol class="indicator"></ol>
        </div>      
        <!-- END BLUEIMP GALLERY -->        
        
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
        
        <script type="text/javascript" src="js/jquery.blueimp-gallery.min.js"></script>        
        <!-- END THIS PAGE PLUGINS-->        

        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/settings.js"></script>
        
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>        
        <!-- END TEMPLATE -->

        <script>            
            document.getElementById('links').onclick = function (event) {
                event = event || window.event;
                var target = event.target || event.srcElement,
                    link = target.src ? target.parentNode : target,
                    options = {index: link, event: event,onclosed: function(){
                        setTimeout(function(){
                            $("body").css("overflow","");
                        },200);                        
                    }},
                    links = this.getElementsByTagName('a');
                blueimp.Gallery(links, options);
            };
        </script>        
        
    <!-- END SCRIPTS -->         
    </body>
</html>






    