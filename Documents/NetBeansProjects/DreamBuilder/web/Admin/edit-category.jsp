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
        
        <link rel="icon" href="favicon.ico" type="img/x-icon" />DotNet123
        <!-- END META SECTION -->
                        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="<%request.getContextPath(); %>/Admin/css/theme-default.css"/>
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
                	
                	
                	   <!-- START HORIZONTAL FORM SAMPLE -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Manage Category</h3>                               
                        		<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
                                    <form class="form-horizontal" role="form" action="<%=request.getContextPath() %>/CategoryController" method="post">
                                        <c:forEach items="${sessionScope.category }" var="a">
                                        <div class="form-group">
                                       <input type="hidden" name="categoryId" value="${a.categoryId}">
                                            <label class="col-md-2 control-label">Category name</label>
                                            <div class="col-md-10">
                                           
                                                <input type="text" class="form-control" name="categoryName" value="${a.categoryName }"/>
                                            
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Category Description</label>
                                            <div class="col-md-10">
                                                <textarea class="form-control" name="categoryDescription">${a.categoryDescription }</textarea>
                                            
                                            </div>
                                        </div>
                                         
                                        <input type="hidden" name="flag" value="edit">
                                         <button type="submit" class="btn btn-danger">Submit</button>
                                         </c:forEach>                                  
                                    </form>                                                                                         
                                </div>
                            </div>
                            <!-- END HORIZONTAL FORM SAMPLE -->
                            
                            
               
            </div>
            </div>
                           
     
        <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="<%request.getContextPath(); %>/Admin/js/jquery.min.js"></script>
        <script type="text/javascript" src="<%request.getContextPath(); %>/Admin/js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="<%request.getContextPath(); %>/Admin/js/bootstrap.min.js"></script>
        <!-- END PLUGINS -->
        
        <!-- THIS PAGE PLUGINS -->
        <script type='text/javascript' src='<%request.getContextPath(); %>/Admin/js/icheck.min.js'></script>
        <script type="text/javascript" src="<%request.getContextPath(); %>/Admin/js/jquery.mCustomScrollbar.min.js"></script>
        
        <script type='text/javascript' src='<%request.getContextPath(); %>/Admin/js/bootstrap-datepicker.js'></script>        
        <script type='text/javascript' src='<%request.getContextPath(); %>/Admin/js/bootstrap-select.js'></script>        

        <script type='text/javascript' src='<%request.getContextPath(); %>/Admin/js/jquery.validationEngine-en.js'></script>
        <script type='text/javascript' src='<%request.getContextPath(); %>/Admin/js/jquery.validationEngine.js'></script>        

        <script type='text/javascript' src='<%request.getContextPath(); %>/Admin/js/jquery.validate.js'></script>                

        <script type='text/javascript' src='<%request.getContextPath(); %>/Admin/js/jquery.maskedinput.min.js'></script>
        <!-- END THIS PAGE PLUGINS -->               

        <!-- START TEMPLATE -->
        <script type="text/javascript" src="<%request.getContextPath(); %>/Admin/js/settings.js"></script>
        
        <script type="text/javascript" src="<%request.getContextPath(); %>/Admin/js/plugins.js"></script>
        <script type="text/javascript" src="<%request.getContextPath(); %>/Admin/js/actions.js"></script>
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