<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<div class="page-container">
            
            <!-- START PAGE SIDEBAR -->
            <jsp:include page="menu.jsp"></jsp:include>
            <!-- END PAGE SIDEBAR -->
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
                <!-- START X-NAVIGATION VERTICAL -->
                <jsp:include page="header.jsp"></jsp:include>
                <!-- END X-NAVIGATION VERTICAL -->        
                	
                	
                            
                            
                            <!-- START Subcategory FORM SAMPLE -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Manage Subcategory</h3>
      <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>                               
                                    <form class="form-horizontal" role="form" action="<%=request.getContextPath() %>/SubcategoryController" method="post">
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Category Name</label>
                                            <div class="col-md-7">                                        
                                                <select class="form-control select" name="categoryId">
                                                <option>Select Category</option>
                                              <c:forEach items="${sessionScope.key }" var="a">
                                                    <option value="${a.categoryId }">${a.categoryName }</option>
                                                    </c:forEach>
                                                    
                                                    
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Subcategory name</label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" name="subcategoryName" palceholder="Enter Name of subcategory"/>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Subcategory Description</label>
                                            <div class="col-md-7">
                                                <textarea class="form-control" name="subcategoryDescription" placeholder="Enter the description of subcategory"></textarea>
                                            </div>
                                        </div>  
                                        <input type="hidden" name="flag" value="insert">
                                         <button type="submit" class="btn btn-danger">Submit</button>                                  
                                    </form>                                                                                         
                                </div>
                            </div>
                            <!-- END subcategory FORM SAMPLE -->
          
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