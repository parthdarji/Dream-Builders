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
                    <li><a href="#">Forms Stuff</a></li>
                    <li class="active">Form Elements</li>
                </ul>
                <!-- END BREADCRUMB -->
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Form Elements</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-10">
                            
                            <!-- START VERTICAL FORM SAMPLE -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Vertical Form Sample</h3>
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Email address</label>
                                            <input type="email" class="form-control"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" class="form-control"/>
                                        </div>
                                        <div class="checkbox pull-left">
                                            <label><input type="checkbox"> Check me out</label>
                                        </div>                                    
                                    </form>                     
                                </div>
                            </div>                        
                            <!-- END VERTICAL FORM SAMPLE -->
                            
                            <!-- START INLINE FORM SAMPLE -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Inline Form Sample</h3>
                                    <form class="form-inline" role="form">
                                        <div class="form-group">
                                            <label class="sr-only">Login</label>
                                            <input type="text" class="form-control" placeholder="Your login"/>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">                                            
                                                <label class="sr-only">Password</label>
                                                <input class="form-control" type="password" placeholder="Your password"/>
                                            </div>
                                        </div>                                    
                                        <button type="submit" class="btn btn-danger">Sign in</button>
                                    </form>                   
                                </div>
                            </div>
                            <!-- END INLINE FORM SAMPLE -->

                            <!-- START HORIZONTAL FORM SAMPLE -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Horizontal Form</h3>                               
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Email</label>
                                            <div class="col-md-10">
                                                <p class="form-control-static">email@example.com</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Password</label>
                                            <div class="col-md-10">
                                                <input type="password" class="form-control" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Text area</label>
                                            <div class="col-md-10">
                                                <textarea class="form-control"></textarea>
                                            </div>
                                        </div>                                    
                                    </form>                                                                                         
                                </div>
                            </div>
                            <!-- END HORIZONTAL FORM SAMPLE -->
                            
                            <!-- START DEFAULT FORM ELEMENTS -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Default Form Inputs</h3>
                                    <form class="form-horizontal" role="form">                                    
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Text</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="Some text value..."/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Password</label>
                                            <div class="col-md-10">
                                                <input type="password" class="form-control" value="password"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Readonly</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" readonly value="Readonly value"/>
                                            </div>
                                        </div>                                    
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Disabled</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" disabled value="Disabled value"/>
                                            </div>
                                        </div>                                    
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Placeholder</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" placeholder="Fill this field please"/>
                                            </div>
                                        </div>                                                                        
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Text area</label>
                                            <div class="col-md-10">
                                                <textarea class="form-control" rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Label</label>
                                            <div class="col-md-10">
                                                <p class="form-control-static">Static form control</p>
                                            </div>
                                        </div>                                    
                                    </form>
                                </div>
                            </div>
                            <!-- END DEFAULT FORM ELEMENTS -->
                            
                            <!-- START CHECKBOXES RADIO AND SELECT -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Default Checkbox, Radio and Select</h3>
                                    <form role="form" class="form-horizontal">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value=""/>
                                                Option one is this and that&mdash;be sure to include why it's great
                                            </label>
                                        </div>
                                        <div class="checkbox disabled">
                                            <label>
                                                <input type="checkbox" value="" disabled/>
                                                Option two is disabled
                                            </label>
                                        </div>

                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked/>
                                                Option one is this and that&mdash;be sure to include why it's great
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"/>
                                                Option two can be something else and selecting it will deselect option one
                                            </label>
                                        </div>
                                        <div class="radio disabled">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled/>
                                                Option three is disabled
                                            </label>
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <div class="form-group">                                        
                                            <select multiple class="form-control">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>   
                                        </div>                                    
                                    </form>                
                                </div>
                            </div>
                            <!-- END OF CHECKBOXES RADIO AND SELECT -->
                            
                            <!-- STYLED CHECKBOX AND RADIO -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Styled Checkbox And Radio</h3>
                                    <div class="form-group">
                                        <div class="col-md-4">                                    
                                            <label class="check"><input type="checkbox" class="icheckbox"/> Default</label>
                                        </div>
                                        <div class="col-md-4">                                    
                                            <label class="check"><input type="checkbox" class="icheckbox" checked="checked"/> Checked</label>
                                        </div>
                                        <div class="col-md-4">                                    
                                            <label class="check"><input type="checkbox" class="icheckbox" disabled/> Disabled</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-4">                                    
                                            <label class="check"><input type="radio" class="iradio" name="iradio"/> Default</label>
                                        </div>
                                        <div class="col-md-4">                                    
                                            <label class="check"><input type="radio" class="iradio" name="iradio" checked="checked"/> Checked</label>
                                        </div>
                                        <div class="col-md-4">                                    
                                            <label class="check"><input type="radio" class="iradio" name="iradio" disabled/> Disabled</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END STYLED CHECKBOX AND RADIO -->
                            
                            <!-- FILE INPUT -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Input File</h3>
                                    <form role="form" class="form-horizontal">
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Default</label>
                                            <div class="col-md-10">
                                                <input type="file"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Styled</label>
                                            <div class="col-md-10">
                                                <input type="file" class="fileinput" name="filename1" id="filename1"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label"></label>
                                            <div class="col-md-10">
                                                <input type="file" class="fileinput btn-success" name="filename2" id="filename2" title="Custom text and background"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label"></label>
                                            <div class="col-md-10">
                                                <input type="file" class="fileinput btn-danger" name="filename3" id="filename3" data-filename-placement="inside" title="File name goes inside"/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- END FILE INPUT -->
                            
                            <!-- START TAGSINPUT -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Tags Input</h3>
                                    <form role="form" class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <input type="text" class="tagsinput" value="First,Second,Third"/>
                                            </div>
                                        </div> 
                                    </form>
                                </div>
                            </div>                        
                            <!-- END OF TAGSINPUT -->                        

                            <!-- START BOOTSTRAP SELECT -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Bootstrap Select</h3>
                                    <form role="form" class="form-horizontal">                                    
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Default</label>
                                            <div class="col-md-9">                                        
                                                <select class="form-control select">
                                                    <option>Option 1</option>
                                                    <option>Option 2</option>
                                                    <option>Option 3</option>
                                                    <option>Option 4</option>
                                                    <option>Option 5</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">                                        
                                            <label class="col-md-3 control-label">Multiple</label>
                                            <div class="col-md-9">                                                                                
                                                <select multiple class="form-control select">
                                                    <option>Option 1</option>
                                                    <option>Option 2</option>
                                                    <option>Option 3</option>
                                                    <option>Option 4</option>
                                                    <option>Option 5</option>
                                                </select>   
                                            </div>
                                        </div>
                                        <h5 class="push-up-20">Custom features</h5>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Styled</label>
                                            <div class="col-md-9">                                                                                
                                                <select class="form-control select" data-style="btn-success">
                                                    <option>Option 1</option>
                                                    <option>Option 2</option>
                                                    <option>Option 3</option>
                                                    <option>Option 4</option>
                                                    <option>Option 5</option>
                                                </select>
                                            </div>
                                        </div>                                    
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Search</label>
                                            <div class="col-md-9">                                                                                
                                                <select class="form-control select" data-live-search="true">
                                                    <option>Lorem ipsum dolor</option>
                                                    <option>Sit amet sicors</option>
                                                    <option>Mostoly stofu tiro</option>
                                                    <option>Vico sante fara</option>
                                                    <option>Delomo ponto si</option>
                                                </select>
                                            </div>
                                        </div>
                                    </form>   
                                </div>
                            </div>
                            <!-- END OF BOOTSTRAP SELECT -->

                            <!-- START DATE AND TIME PICKER -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Date and time pickers</h3>                        
                                    <form class="form-horizontal" role="form">                                    
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Default</label>
                                            <div class="col-md-5">
                                                <input type="text" class="form-control datepicker" value="2014-08-04">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">As component</label>
                                            <div class="col-md-5">
                                                <div class="input-group date" id="dp-2" data-date="05-07-2014" data-date-format="dd-mm-yyyy">
                                                    <input type="text" class="form-control" value="05-07-2014" disabled="disabled"/>
                                                    <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Start with year</label>
                                            <div class="col-md-5">
                                                <div class="input-group">
                                                    <input type="text" id="dp-3" class="form-control" value="06-06-2014" data-date="06-06-2014" data-date-format="dd-mm-yyyy" data-date-viewmode="years"/>
                                                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Start with months</label>
                                            <div class="col-md-5">
                                                <div class="input-group" >
                                                    <input type="text" class="form-control" value="07-07-2014" id="dp-4" data-date="07-07-2014" data-date-format="dd-mm-yyyy" data-date-viewmode="months"/>
                                                    <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                </div>
                                            </div>
                                        </div>

                                        <h3 class="push-up-20">Timepickers</h3>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Default</label>
                                            <div class="col-md-5">
                                                <div class="input-group bootstrap-timepicker">
                                                    <input type="text" class="form-control timepicker"/>
                                                    <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">24 hour mode</label>
                                            <div class="col-md-5">
                                                <div class="input-group bootstrap-timepicker">
                                                    <input type="text" class="form-control timepicker24"/>
                                                    <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>      
                            <!-- END DATE AND TIME PICKER -->

                            <!-- START COLORPICKER -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Colorpickers</h3>
                                    <form class="form-horizontal" role="form">                                    
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Default</label>
                                            <div class="col-md-5">
                                                <input type="text" class="form-control colorpicker" value="#FF4400">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">RGBA mode</label>
                                            <div class="col-md-5">
                                                <input type="text" class="form-control colorpicker_rgba" value="rgba(0,0,0,0.25)" data-color-format="rgba"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">As component</label>
                                            <div class="col-md-5">
                                                <div class="input-group color" data-color="rgb(255, 146, 180)" data-color-format="rgb" id="colorpicker">
                                                    <input type="text" class="form-control" readonly/>
                                                    <span class="input-group-addon"><i style="background-color: rgb(255, 146, 180)"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>                                                          
                            <!-- END COLORPICKER -->
                            
                            <!-- START FORM GROUP ELEMENTS -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Form Groups</h3>
                                    <form role="form" class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">@</span>
                                                    <input type="text" class="form-control" placeholder="Left side addon"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" placeholder="Right side addon"/>
                                                    <span class="input-group-addon">.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">                                            
                                                    <span class="input-group-addon">$</span>
                                                    <input type="text" class="form-control" placeholder="Both side addons"/>
                                                    <span class="input-group-addon">.00</span>
                                                </div>
                                            </div>
                                        </div>

                                        <h3 class="push-up-20">Sizing</h3>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group input-group-lg">                                            
                                                    <span class="input-group-addon">@</span>
                                                    <input type="text" class="form-control" placeholder="Large"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">                                        
                                                <div class="input-group">
                                                    <span class="input-group-addon">@</span>
                                                    <input type="text" class="form-control" placeholder="Default"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group input-group-sm">
                                                    <span class="input-group-addon">@</span>
                                                    <input type="text" class="form-control" placeholder="Small"/>
                                                </div>                 
                                            </div>
                                        </div>

                                        <h3 class="push-up-20">Checkbox and radio addons</h3>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input type="checkbox"/>
                                                    </span>
                                                    <input type="text" class="form-control" placeholder="Checkbox addon"/>
                                                </div>                 
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <input type="radio"/>
                                                    </span>
                                                    <input type="text" class="form-control" placeholder="Radio addon"/>
                                                </div>
                                            </div>
                                        </div>

                                        <h3 class="push-up-20">Button addons</h3>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default" type="button">Go!</button>
                                                    </span>
                                                    <input type="text" class="form-control" placeholder="Left side button addon"/>
                                                </div>                 
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" placeholder="Right side button addon"/>
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default" type="button">Go!</button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default" type="button">Left</button>
                                                    </span>
                                                    <input type="text" class="form-control" placeholder="Both side button addon"/>
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default" type="button">Right</button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- END FORM GROUP ELEMENTS -->
                            
                            <!-- START FORM VALIDATION STATES -->
                            <div class="panel panel-default">                            
                                <div class="panel-body">
                                    <h3>Form Validation States</h3>
                                    <div class="col-md-6">
                                        <div class="form-group has-success">
                                            <label class="control-label">Input with success</label>
                                            <input type="text" class="form-control"/>
                                        </div>
                                        <div class="form-group has-warning">
                                            <label class="control-label">Input with warning</label>
                                            <input type="text" class="form-control"/>
                                        </div>
                                        <div class="form-group has-error">
                                            <label class="control-label">Input with error</label>
                                            <input type="text" class="form-control"/>
                                        </div>       
                                    </div>                                
                                    <div class="col-md-6">
                                        <div class="form-group has-success has-feedback">
                                            <label class="control-label">Input with success</label>
                                            <input type="text" class="form-control"/>
                                            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
                                        </div>
                                        <div class="form-group has-warning has-feedback">
                                            <label class="control-label">Input with warning</label>
                                            <input type="text" class="form-control"/>
                                            <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
                                        </div>
                                        <div class="form-group has-error has-feedback">
                                            <label class="control-label">Input with error</label>
                                            <input type="text" class="form-control"/>
                                            <span class="glyphicon glyphicon-remove form-control-feedback"></span>
                                        </div>  
                                    </div>                
                                </div>
                            </div>
                            <!-- END FORM VALIDATION STATES -->
                            
                        </div>
                        <div class="col-md-1"></div>
                    </div>                    
                    
                    <div class="row">
                        <div class="col-md-12">
                    
                            <!-- START FORM GRID -->
                            <div class="panel panel-default">                            
                                <div class="panel-body">
                                    <h3>Form Grid</h3>
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">                                        
                                            <div class="col-md-12">
                                                <input type="text" placeholder=".col-md-12" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">                                    
                                            <div class="col-md-8">
                                                <input type="text" placeholder=".col-md-8" class="form-control"/>
                                            </div>               
                                            <div class="col-md-4">
                                                <input type="text" placeholder=".col-md-4" class="form-control"/>
                                            </div>                                                                               
                                        </div>       
                                        <div class="form-group">                                    
                                            <div class="col-md-6">
                                                <input type="text" placeholder=".col-md-6" class="form-control"/>
                                            </div>               
                                            <div class="col-md-3">
                                                <input type="text" placeholder=".col-md-3" class="form-control"/>
                                            </div>                                                                               
                                            <div class="col-md-3">
                                                <input type="text" placeholder=".col-md-3" class="form-control"/>
                                            </div>                                        
                                        </div>                                      
                                        <div class="form-group">                                    
                                            <div class="col-md-4">
                                                <input type="text" placeholder=".col-md-4" class="form-control"/>
                                            </div>               
                                            <div class="col-md-4">
                                                <input type="text" placeholder=".col-md-4" class="form-control"/>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text" placeholder=".col-md-4" class="form-control"/>
                                            </div>                                                        
                                        </div>                                                                                    
                                        <div class="form-group">                                    
                                            <div class="col-md-2">
                                                <input type="text" placeholder=".col-md-2" class="form-control"/>
                                            </div>                                         
                                            <div class="col-md-5">
                                                <input type="text" placeholder=".col-md-5" class="form-control"/>
                                            </div>   
                                            <div class="col-md-5">
                                                <input type="text" placeholder=".col-md-5" class="form-control"/>
                                            </div>                                                                                                                                   
                                        </div>                                           
                                    </form>    
                                </div>
                            </div>
                            <!-- END HORIZONTAL FORM SAMPLE -->
                    
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
        
        <!-- THIS PAGE PLUGINS -->
        <script type='text/javascript' src='js/icheck.min.js'></script>
        <script type="text/javascript" src="js/jquery.mCustomScrollbar.min.js"></script>
        
        <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-colorpicker.js"></script>
        <script type="text/javascript" src="js/bootstrap-file-input.js"></script>
        <script type="text/javascript" src="js/bootstrap-select.js"></script>
        <script type="text/javascript" src="js/jquery.tagsinput.min.js"></script>
        <!-- END THIS PAGE PLUGINS -->       
        
        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/settings.js"></script>
        
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>        
        <!-- END TEMPLATE -->
    <!-- END SCRIPTS -->                   
    </body>
</html>






    