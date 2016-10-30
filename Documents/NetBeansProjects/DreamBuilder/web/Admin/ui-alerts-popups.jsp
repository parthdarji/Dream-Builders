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
                    <li><a href="#">UI Kits</a></li>
                    <li class="active">Alerts & Popups</li>
                </ul>
                <!-- END BREADCRUMB -->
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Alerts & Popups</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">                
                
                    <div class="row">

                        <div class="col-md-6">
                            <!-- START MESSAGE BOX -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Message Box</h3>                                
                                </div>
                                <div class="panel-body">
                                    <p>Messag Box - is a alert window that developed special for this template.</p>
                                    <div class="form-group">
                                        <button type="button" class="btn btn-default mb-control" data-box="#message-box-default">Default</button>
                                    </div>
                                    <h4>States</h4>
                                    <p>Available 5 states: defaul, success, info, warning and danger.</p>
                                    <div class="form-group">
                                        <button type="button" class="btn btn-success mb-control" data-box="#message-box-success">Success</button>
                                        <button type="button" class="btn btn-info mb-control" data-box="#message-box-info">Info</button>
                                        <button type="button" class="btn btn-warning mb-control" data-box="#message-box-warning">Warning</button>
                                        <button type="button" class="btn btn-danger mb-control" data-box="#message-box-danger">Danger</button>
                                    </div>
                                    <h4>Sound</h4>
                                    <p>Add <code>data-sound="alert/fail"</code> to <code>.message-box</code> to play sound on open.</p>
                                    <div class="form-group">
                                        <button type="button" class="btn btn-info mb-control" data-box="#message-box-sound-1">Alert</button>
                                        <button type="button" class="btn btn-danger mb-control" data-box="#message-box-sound-2">Fail</button>
                                    </div>
                                </div>                                                        
                            </div>
                            <!-- END MESSAGE BOX -->

                            <!-- START ALERT BLOCKS -->
                            <div class="alert alert-success" role="alert">
                                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <strong>Well done!</strong> You successfully read this important alert message.
                            </div>
                            <div class="alert alert-info" role="alert">
                                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                            </div>
                            <div class="alert alert-warning" role="alert">
                                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <strong>Warning!</strong> Better check yourself, you're not looking too good.
                            </div>
                            <div class="alert alert-danger" role="alert">
                                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <strong>Oh snap!</strong> Change a few things up and try submitting again.
                            </div>                        
                            <!-- END ALERT BLOCKS -->

                            <!-- START TOOLTIPS -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Tooltips</h3>
                                    <ul class="panel-controls">
                                        <li>
                                            <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Thank you!">Hover me!</button>
                                        </li>                                
                                    </ul>
                                </div>
                                <div class="panel-body">
                                    <p>Hover over the buttons below to see tooltips:</p>
                                    <button type="button" class="btn btn-primary" data-toggle="tooltip" data-placement="left" title="Tooltip on left">Tooltip on left</button>
                                    <button type="button" class="btn btn-info" data-toggle="tooltip" data-placement="top" title="Tooltip on top">Tooltip on top</button>
                                    <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">Tooltip on bottom</button>
                                    <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>                                
                                </div>                                                        
                            </div>
                            <!-- END TOOLTIPS -->

                            <!-- START TOOLTIPS -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Popovers</h3>
                                    <ul class="panel-controls">
                                        <li>
                                            <button type="button" class="btn btn-danger"  data-container="body" data-toggle="popover" data-placement="top" data-content="Thank you my friend! :)">Click me!</button>
                                        </li>                                
                                    </ul>
                                </div>
                                <div class="panel-body">                                
                                    <p>Four options are available: top, right, bottom, and left aligned.</p>
                                    <button type="button" class="btn btn-info" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Popover on top</button>
                                    <button type="button" class="btn btn-success" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Popover on bottom</button>
                                    <button type="button" class="btn btn-primary" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Popover on left</button>
                                    <button type="button" class="btn btn-warning" data-container="body" data-toggle="popover" data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Popover on right</button>
                                </div>       
                                <div class="panel-body">
                                    <button type="button" class="btn btn-danger popover-dismiss" title="Dismissible popover" data-content="And here's some amazing content. It's very engaging. Right?">Dismissible popover</button>
                                </div>
                            </div>
                            <!-- END TOOLTIPS -->

                        </div>

                        <div class="col-md-6">

                            <!-- START NOTY PLUGIN -->
                            <div class="panel panel-default">                                
                                <div class="panel-heading">
                                    <h3 class="panel-title">Notifications</h3>                                    
                                    <ul class="panel-controls">
                                        <li>
                                            <button class="btn btn-default pull-right" onClick="$.noty.closeAll();">Close all</button>
                                        </li>                                
                                    </ul>
                                </div>                                
                                <div class="panel-body">                                                           
                                    <p>The notifications can be positioned at the: top - topLeft - topCenter - topRight - center - centerLeft - centerRight - bottom - bottomLeft - bottomCenter - bottomRight</p>                                                                            
                                    <div class="form-group">                                        
                                        <button class="btn btn-default" onClick="noty({text: 'Left top notify', layout: 'topLeft'});">Left top</button> 
                                        <button class="btn btn-default" onClick="noty({text: 'Center top notify', layout: 'topCenter'});">Center top</button> 
                                        <button class="btn btn-default" onClick="noty({text: 'Right top notify', layout: 'topRight'});">Right top</button>                                         
                                    </div>
                                    <h4>States</h4>
                                    <p>Noty is a jQuery plugin that makes it easy to create alert - success - error - warning - information - confirmation messages as an alternative the standard alert dialog. Each notification is added to a queue.</p>
                                    <div class="form-group">                                            
                                        <button class="btn btn-success" onClick="noty({text: 'Successful action', layout: 'topRight', type: 'success'});">Success</button> 
                                        <button class="btn btn-danger" onClick="noty({text: 'There was an error', layout: 'topRight', type: 'error'});">Error</button> 
                                        <button class="btn btn-warning" onClick="noty({text: 'Best check yo self', layout: 'topRight', type: 'warning'});">Warning</button> 
                                        <button class="btn btn-info" onClick="noty({text: 'This alert needs your attention', layout: 'topRight', type: 'information'});">Warning</button>
                                        <button class="btn btn-primary" onClick="notyConfirm();">Confirm</button>                                                                                    
                                    </div>                                                                                
                                </div>
                            </div>                        
                            <!-- END NOTY PLUGIN -->

                            <!-- START MPB PLUGIN -->
                            <div class="panel panel-default">                        
                                <div class="panel-heading">
                                    <h3 class="panel-title">Custom Progress Bar</h3>
                                    <ul class="panel-controls">
                                        <li><button class="btn btn-default" onClick="$.mpb('destroy');">Remove All</button></li>
                                    </ul>
                                </div>
                                <div class="panel-body">

                                    <p>This is custom progress bar.</p>
                                    <div class="form-group">
                                        <button class="btn btn-default" onClick="$.mpb('show',{value: [0,20],speed: 10});">0%-20%</button>
                                        <button class="btn btn-default" onClick="$.mpb('show',{value: [50,100],speed: 10});">50-100%</button>                                        
                                    </div>
                                    <h4>States</h4>
                                    <p>Use <code>state</code> to change color of progress bar.</p>
                                    <div class="form-group">
                                        <button class="btn btn-success" onClick="$.mpb('show',{value: [0,40],speed: 10,state: 'success'});">Success 30%</button>
                                        <button class="btn btn-warning" onClick="$.mpb('show',{value: [0,60],speed: 10,state: 'warning'});">Warning 50%</button>
                                        <button class="btn btn-info" onClick="$.mpb('show',{value: [0,80],speed: 10,state: 'info'});">Info 70%</button>
                                        <button class="btn btn-danger" onClick="$.mpb('show',{value: [0,50],speed: 10,state: 'danger'});">Danger 90%</button>
                                    </div>
                                    <h4>Extras</h4>
                                    <p>Also you can use actions for one progress bar, such as <code>show</code>,<code>update</code>,<code>destroy</code></p>
                                    <div class="form-group">
                                        <button class="btn btn-default" onClick="$.mpb('show',{value: [0,30],speed: 5});">Show 0%-30%</button>
                                        <button class="btn btn-default" onClick="$.mpb('update',{value: [50,100],speed: 5});">Update 30-100%</button>
                                        <button class="btn btn-default" onClick="$.mpb('destroy');">Destroy</button>
                                    </div>
                                    <h4>Position</h4>
                                    <p>Use action <code>position</code> with value <code>bottom</code> to use place progress bar in bottom.</p>
                                    <div class="form-group">
                                        <button class="btn btn-default" onClick="$.mpb('show',{value: [0,75],position: 'bottom',speed: 5});">Bottom 0%-75%</button>
                                    </div>

                                </div>
                            </div>
                            <!-- END MPB PLUGIN -->

                        </div>

                    </div>

                </div>                    
                <!-- PAGE CONTENT WRAPPER -->                                    
            </div>    
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->
        
        <!-- Message Boxes -->
        <!-- default -->
        <div class="message-box animated fadeIn" id="message-box-default">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-globe"></span> Some <strong>Title</strong></div>
                    <div class="mb-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tellus sed mauris mollis pellentesque nec a ligula. Quisque ultricies eleifend lacinia. Nunc luctus quam pretium massa semper tincidunt. Praesent vel mollis eros. Fusce erat arcu, feugiat ac dignissim ac, aliquam sed urna. Maecenas scelerisque molestie justo, ut tempor nunc.</p>                    
                    </div>
                    <div class="mb-footer">
                        <button class="btn btn-default btn-lg pull-right mb-control-close">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end default -->
        
        <!-- default with sound -->
        <div class="message-box animated fadeIn" data-sound="alert" id="message-box-sound-1">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-globe"></span> Alert</div>
                    <div class="mb-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tellus sed mauris mollis pellentesque nec a ligula. Quisque ultricies eleifend lacinia. Nunc luctus quam pretium massa semper tincidunt. Praesent vel mollis eros. Fusce erat arcu, feugiat ac dignissim ac, aliquam sed urna. Maecenas scelerisque molestie justo, ut tempor nunc.</p>                    
                    </div>
                    <div class="mb-footer">
                        <button class="btn btn-info btn-lg pull-right mb-control-close">Got it!</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end default with sound -->
        
        <!-- danger with sound -->
        <div class="message-box message-box-danger animated fadeIn" data-sound="fail" id="message-box-sound-2">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-times"></span> DANGER!</div>
                    <div class="mb-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tellus sed mauris mollis pellentesque nec a ligula. Quisque ultricies eleifend lacinia. Nunc luctus quam pretium massa semper tincidunt. Praesent vel mollis eros. Fusce erat arcu, feugiat ac dignissim ac, aliquam sed urna. Maecenas scelerisque molestie justo, ut tempor nunc.</p>                    
                    </div>
                    <div class="mb-footer">
                        <button class="btn btn-default btn-lg pull-right mb-control-close">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end danger with sound -->
        
        <!-- success -->
        <div class="message-box message-box-success animated fadeIn" id="message-box-success">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-check"></span> Success</div>
                    <div class="mb-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tellus sed mauris mollis pellentesque nec a ligula. Quisque ultricies eleifend lacinia. Nunc luctus quam pretium massa semper tincidunt. Praesent vel mollis eros. Fusce erat arcu, feugiat ac dignissim ac, aliquam sed urna. Maecenas scelerisque molestie justo, ut tempor nunc.</p>
                    </div>
                    <div class="mb-footer">
                        <button class="btn btn-default btn-lg pull-right mb-control-close">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end success -->
        
        <!-- warning -->
        <div class="message-box message-box-warning animated fadeIn" id="message-box-warning">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-warning"></span> Warning</div>
                    <div class="mb-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tellus sed mauris mollis pellentesque nec a ligula. Quisque ultricies eleifend lacinia. Nunc luctus quam pretium massa semper tincidunt. Praesent vel mollis eros. Fusce erat arcu, feugiat ac dignissim ac, aliquam sed urna. Maecenas scelerisque molestie justo, ut tempor nunc.</p>                  
                    </div>
                    <div class="mb-footer">
                        <button class="btn btn-default btn-lg pull-right mb-control-close">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end danger -->
        
        <!-- info -->
        <div class="message-box message-box-info animated fadeIn" id="message-box-info">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-info"></span> Information</div>
                    <div class="mb-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tellus sed mauris mollis pellentesque nec a ligula. Quisque ultricies eleifend lacinia. Nunc luctus quam pretium massa semper tincidunt. Praesent vel mollis eros. Fusce erat arcu, feugiat ac dignissim ac, aliquam sed urna. Maecenas scelerisque molestie justo, ut tempor nunc.</p>
                    </div>
                    <div class="mb-footer">
                        <button class="btn btn-default btn-lg pull-right mb-control-close">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end info -->
        
        <!-- danger -->
        <div class="message-box message-box-danger animated fadeIn" id="message-box-danger">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-times"></span> Danger</div>
                    <div class="mb-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tellus sed mauris mollis pellentesque nec a ligula. Quisque ultricies eleifend lacinia. Nunc luctus quam pretium massa semper tincidunt. Praesent vel mollis eros. Fusce erat arcu, feugiat ac dignissim ac, aliquam sed urna. Maecenas scelerisque molestie justo, ut tempor nunc.</p>
                    </div>
                    <div class="mb-footer">
                        <button class="btn btn-default btn-lg pull-right mb-control-close">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end danger -->
        
        <!-- END Message Boxes -->
        
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
        <audio id="audio-alert" src="audio/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="audio/fail.mp3" preload="auto"></audio>
        <!-- END PRELOADS -->
        
        <!-- START SCRIPTS -->
            <!-- START PLUGINS -->
            <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
            <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
            <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>        
            <!-- END PLUGINS -->

            <!-- THIS PAGE PLUGINS -->
        <script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
        <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        
            <script type='text/javascript' src='js/plugins/noty/jquery.noty.js'></script>
            <script type='text/javascript' src='js/plugins/noty/layouts/topCenter.js'></script>
            <script type='text/javascript' src='js/plugins/noty/layouts/topLeft.js'></script>
            <script type='text/javascript' src='js/plugins/noty/layouts/topRight.js'></script>            
            
            <script type='text/javascript' src='js/plugins/noty/themes/default.js'></script>
            <script type="text/javascript">                                            
                function notyConfirm(){
                    noty({
                        text: 'Do you want to continue?',
                        layout: 'topRight',
                        buttons: [
                                {addClass: 'btn btn-success btn-clean', text: 'Ok', onClick: function($noty) {
                                    $noty.close();
                                    noty({text: 'You clicked "Ok" button', layout: 'topRight', type: 'success'});
                                }
                                },
                                {addClass: 'btn btn-danger btn-clean', text: 'Cancel', onClick: function($noty) {
                                    $noty.close();
                                    noty({text: 'You clicked "Cancel" button', layout: 'topRight', type: 'error'});
                                    }
                                }
                            ]
                    })                                                    
                }                                            
            </script>
            <!-- END PAGE PLUGINS -->

            <!-- START TEMPLATE -->
            <script type="text/javascript" src="js/settings.js"></script>
            
            <script type="text/javascript" src="js/plugins.js"></script>        
            <script type="text/javascript" src="js/actions.js"></script>        
            <!-- END TEMPLATE -->
        <!-- END SCRIPTS -->         
        
    </body>
</html>