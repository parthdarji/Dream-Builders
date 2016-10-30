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
        
      
<script>
  function loadState()
	{
		var countryId=document.getElementById("countryId");
		
		var xmlhttp;
		
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		removeAllState();
	
		
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);
				
				for(i=0 ; i<jsonObj.length ; i++)
				{
				
					var createOption=document.createElement("option");
					
					createOption.value=jsonObj[i].stateId;
					createOption.text=jsonObj[i].stateName;
					
					document.cityForm.stateId.options.add(createOption);
					
				}
			}
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/StateController?flag=loadState&countryId="+countryId.value, true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}
	
	function removeAllState()
	{
		var removeState=document.cityForm.stateId.options.length;
		for(i=removeState ; i>0 ; i-- )
		{
			document.cityForm.stateId.remove(i);
		}
	}

	</script>                  
    </head>
    <body>
<div class="page-container">
            
            <!-- START PAGE SIDEBAR -->
            <jsp:include page="menu.jsp"></jsp:include>
            <!-- END PAGE SIDEBAR -->
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
                <!-- START X-NAVIGATION VERTICAL -->
                <jsp:include page="header.jsp"></jsp:include>
                <!-- END X-NAVIGATION VERTICAL -->        
                	
                	
                	   

           	   <!-- START HORIZONTAL FORM SAMPLE -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Manage City</h3>
                                    
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>                                                                   
                           <form class="form-horizontal" role="form" action="<%=request.getContextPath() %>/CityController" method="post" name="cityForm" >
                  						
                  						
                  						<div cla2ss="form-group">
                                            <label class="col-md-3 control-label">Country</label>
                                            <div class="col-md-9">                                        
                                                <select  name="countryId" id="countryId" onchange="loadState()" 
                                                style="width: 100%; height: 30px; border: 1px solid #ddd; color: #555; font-size: 12px; font-weight: 400; cursor: pointer;">
                                                
                                                <option>Select Country Name </option>
                                      	          <c:forEach items="${sessionScope.country }"  var="a">
                                                
													<option value="${a.countryId }">${a.countryName }</option>
                                                 </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                    
                                    	<div class="form-group">
                                            <label class="col-md-3 control-label">State</label>
                                            <div class="col-md-9">                                        
                                                <select  name="stateId"
                                                style="width: 100%; height: 30px; border: 1px solid #ddd; color: #555; font-size: 12px; font-weight: 400; cursor: pointer;">
                                                    <option>Select State Name</option>
                                                      <c:forEach items="${sessionScope.state }" var="b">
													<option value="${b.stateId }">${b.stateName }</option>
                                                 </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        
                                                                                                                   
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">City</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" placeholder=" Enter City Name" name="cityName"/>
                                            </div>
                                        </div>
                                      
                                        
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">City Description</label>
                                            <div class="col-md-10">
                                                <textarea class="form-control" name="cityDescription" placeholder="Enter City Description"></textarea>
                                            </div>
                                        </div>
                                        <input type="hidden" name="flag" value="insert">
                                         <button type="submit" class="btn btn-danger">Submit</button>                                  
                                    </form>                                                                                         
                                </div>
                            </div>
                            <!-- END HORIZONTAL FORM SAMPLE -->

          
            

          
            </div>
            </div>
  
        <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- END PLUGINS -->
        
        <!-- THIS PAGE PLUGINS -->
        <script type='text/javascript' src='js/icheck.min.js'></script>
        <script type="text/javascript" src="js/jquery.mCustomScrollbar.min.js"></script>
        
        <script type='text/javascript' src='js/bootstrap-datepicker.js'></script>        
        <script type='text/javascript' src='js/bootstrap-select.js'></script>        

        <script type='text/javascript' src='js/jquery.validationEngine-en.js'></script>
        <script type='text/javascript' src='js/jquery.validationEngine.js'></script>        

        <script type='text/javascript' src='js/jquery.validate.js'></script>                

        <script type='text/javascript' src='js/jquery.maskedinput.min.js'></script>
        <!-- END THIS PAGE PLUGINS -->               

        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/settings.js"></script>
        
        <script type="text/javascript" src="js/plugins.js"></script>
        <script type="text/javascript" src="js/actions.js"></script>
        <!-- END TEMPLATE -->
        
        <script type="text/javascript">
            var jvalidate = $("#jvalidate").validate({
                ignore: [],
                rules: {                                            
                        login: {
                                required: true,
                                minlength: 2,
                                maxlength: 8
                        },
                        password: {
                                required: true,
                                minlength: 5,
                                maxlength: 10
                        },
                        're-password': {
                                required: true,
                                minlength: 5,
                                maxlength: 10,
                                equalTo: "#password2"
                        },
                        age: {
                                required: true,
                                min: 18,
                                max: 100
                        },
                        email: {
                                required: true,
                                email: true
                        },
                        date: {
                                required: true,
                                date: true
                        },
                        credit: {
                                required: true,
                                creditcard: true
                        },
                        site: {
                                required: true,
                                url: true
                        }
                    }                                        
                });                                    

        </script>
        
    <!-- END SCRIPTS -->
                                                 
                	
</body>
    </html>