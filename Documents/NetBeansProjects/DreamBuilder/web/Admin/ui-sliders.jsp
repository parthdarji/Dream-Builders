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
        <link rel="stylesheet" type="text/css" href="css/ion/ion.rangeSlider.css"/>
        <link rel="stylesheet" type="text/css" href="css/ion/ion.rangeSlider.skinFlat.css"/>
        <!-- EOF CSS INCLUDE -->
        
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
            <div class="page-content sortableContent" id="grid_content_1">
                
                <!-- START X-NAVIGATION VERTICAL -->
                <jsp:include page="header.jsp"></jsp:include>
                <!-- END X-NAVIGATION VERTICAL -->                    
                
                <!-- START BREADCRUMB -->
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">UI Kits</a></li>
                    <li class="active">Sliders</li>
                </ul>
                <!-- END BREADCRUMB -->
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Sliders</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">                
                
                    <div class="row">
                        <div class="col-md-12">
                            
                            <!-- START ION RANGE SLIDER -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3><strong>Ion</strong> Range Slider</h3>
                                    <p>Beautiful, comfortable and easily customizable range slider with skins support. Also support events and public methods, has flexible settings and can be completely modified with CSS.</p>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form role="form" class="form-horizontal">

                                                <div class="form-group">
                                                    <label class="control-label col-md-2">Default</label>
                                                    <div class="col-md-10">
                                                        <p>Start without params</p>
                                                        <input type="text" id="ise_default" name="ise_default" value="" />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label col-md-2">Min-Max</label>
                                                    <div class="col-md-10">
                                                        <p>Set min value, max value and start point</p>
                                                        <input type="text" id="ise_min_max" name="ise_min_max" value="" />                                                        
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label col-md-2">Prefix</label>
                                                    <div class="col-md-10">
                                                        <p>Showing grid and adding prefix "$"</p>
                                                        <input type="text" id="ise_prefix" name="ise_prefix" value="" />                                                        
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label col-md-2">Step</label>
                                                    <div class="col-md-10">
                                                        <p>Step 250</p>
                                                        <input type="text" id="ise_step" name="ise_step" value="" />                                                        
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label class="control-label col-md-2">Custom Values</label>
                                                    <div class="col-md-10">
                                                        <p>One more example with strings</p>
                                                        <input type="text" id="ise_custom_values" name="ise_custom_values" value="" />                                                        
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label class="control-label col-md-2">Decorate</label>
                                                    <div class="col-md-10">
                                                        <p>Taking care about how from and to values connect? Use decorate_both option</p>
                                                        <input type="text" id="ise_decorate" name="ise_decorate" value="" />                                                        
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label class="control-label col-md-2">Disabled</label>
                                                    <div class="col-md-10">
                                                        <p>You can lock your slider, by using disable option</p>
                                                        <input type="text" id="ise_disabled" name="ise_disabled" value="" />                                                        
                                                    </div>
                                                </div>
                                                
                                            </form>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <!-- END ION RANGE SLIDER -->
                            
                            <!-- START RANGE SLIDER -->
                            <div class="panel panel-default">       
                                <div class="panel-body">
                                    <h3>Range Slider</h3>
                                    <form role="form" class="form-horizontal">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">Default</label>
                                            <div class="col-md-10">
                                                <div class="defaultSlider" data-min="20" data-max="180"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2">Date slider</label>
                                            <div class="col-md-10">
                                                <div class="dateSlider" data-min="2010-01-01" data-max="2015-01-01"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2">Range</label>
                                            <div class="col-md-10">
                                                <div class="rangeSlider" data-min="80" data-max="120"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2">Step</label>
                                            <div class="col-md-10">
                                                <div class="stepSlider" data-min="50" data-max="150"></div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- END RANGE SLIDER -->

                            <!-- START KNOB SLIDER -->
                            <div class="panel panel-default">       
                                <div class="panel-body">
                                    <h3><strong>Knob</strong> Slider</h3>
                                    <div class="row">
                                        <div class="col-md-4 text-center">
                                            <h5>Disable display input</h5>
                                            <input class="knob" data-width="150" data-fgColor="#33414E" data-displayInput=false value="35"/>                                        
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <h5>'cursor' mode</h5>
                                            <input class="knob" data-width="150" data-cursor=true data-fgColor="#81C500" value="29"/>                                        
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <h5>Display previous value</h5>
                                            <input class="knob" data-width="150" data-min="-100" data-fgColor="#FD421C" data-displayPrevious=true value="44"/>
                                        </div>
                                    </div>                                                                    

                                    <div class="row">
                                        <div class="col-md-4 text-center">
                                            <h5>Angle offset</h5>
                                            <input class="knob" data-width="150" data-angleOffset="90" data-linecap="round" data-fgColor="#61C0E6" value="35"/>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <h5>Angle offset and arc</h5>
                                            <input class="knob" data-width="150" data-cursor=true data-fgColor="#FEC558" value="29"/>                                        
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <h5>5-digit values, step 1000</h5>
                                            <input class="knob" data-width="150" data-min="-15000" data-displayPrevious=true data-max="15000" data-step="1000" value="-11000" data-fgColor="#81C500"/>                                         
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- END KNOB SLIDER -->                        

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
        
        <script type="text/javascript" src="js/jQAllRangeSliders-min.js"></script>       
        <script type="text/javascript" src="js/jquery.knob.min.js"></script>
        
        <script type="text/javascript" src="js/ion.rangeSlider.min.js"></script>
        <!-- END THIS PAGE PLUGINS-->      
        
        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/settings.js"></script>
        
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>
        <!-- END TEMPLATE -->
        
        <script type="text/javascript" src="js/demo_sliders.js"></script>
    <!-- END SCRIPTS -->         
        
    </body>
</html>