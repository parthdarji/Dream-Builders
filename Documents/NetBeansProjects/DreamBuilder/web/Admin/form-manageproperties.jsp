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
<link rel="stylesheet" type="text/css" id="theme"
	href="css/theme-default.css" />
<!-- EOF CSS INCLUDE -->

<script>
	function loadSubcategory() {
		var categoryId = document.getElementById("categoryId");

		var xmlhttp;

		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		removeAllSubcat();

		//		alert("dddddddddddddd");

		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);

				//				alert(xmlhttp.responseText);

				for (i = 0; i < jsonObj.length; i++) {

					var createOption = document.createElement("option");

					createOption.value = jsonObj[i].subcategoryId;
					createOption.text = jsonObj[i].subcategoryName;

					document.property.subcategory.options.add(createOption);

				}
			}
		}

		xmlhttp
				.open(
						"get",
						"${pageContext.request.contextPath}/SubcategoryController?flag=loadsubcategory&categoryId="
								+ categoryId.value, true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}

	function removeAllSubcat() {
		var removeState = document.property.subcategory.options.length;
		for (i = removeState; i > 0; i--) {
			document.property.subcategory.remove(i);
		}
	}

	function loadState() {
		var countryId = document.getElementById("countryId");

		var xmlhttp;

		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		removeAllState();

		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);

				for (i = 0; i < jsonObj.length; i++) {

					var createOption = document.createElement("option");

					createOption.value = jsonObj[i].stateId;
					createOption.text = jsonObj[i].stateName;

					document.property.state.options.add(createOption);

				}
			}
		}

		xmlhttp.open("get",
				"${pageContext.request.contextPath}/StateController?flag=loadState&countryId="
						+ countryId.value, true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}

	function removeAllState() {
		var removeState = document.property.state.options.length;
		for (i = removeState; i > 0; i--) {
			document.property.state.remove(i);
		}
	}

	function loadcity() {
		var stateId = document.getElementById("stateId");
		
		var xmlhttp;

		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		removeAllCity();

		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);

		
				for (i = 0; i < jsonObj.length; i++) {

					var createOption = document.createElement("option");

					createOption.value = jsonObj[i].cityId;
					createOption.text = jsonObj[i].cityName;

					document.property.city.options.add(createOption);

				}
			}
		}

		xmlhttp.open("get",
				"${pageContext.request.contextPath}/CityController?flag=loadCity&stateId="+ stateId.value, true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}

	function removeAllCity() {
		var removeState = document.property.city.options.length;
		for (i = removeState; i > 0; i--) {
			document.property.city.remove(i);
		}
	}
	
	function fnamevalidate()
	{
	 var a=document.getElementById("fname");
	 var b=document.getElementById("fname1");


	 if(a.value=="")
		 {
		 	b.style.display="";
		 }
	 else if(a.value!="")
		 {
		 	b.style.display="none";
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
					<h3>Manage Properties</h3>
					<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
					<form class="form-horizontal" role="form" name="property"
						action="<%=request.getContextPath()%>/PropertyController"
						method="post">

						<div class="form-group">
							<label class="col-md-3 control-label">Property Name</label>
							<div class="col-md-5">
								<input id="pname" type="text" class="form-control" name="propertyName" placeholder="name of property.." />
							</div>
							<br>
							<div><span id="pname1" style="display: none; color: red">Value can not be null</span></div>
							<br>  
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label">Category</label>
							<div class="col-md-5">
								<select name="categoryName" id="categoryId"
									onchange="loadSubcategory()"
									style="width: 100%; height: 30px; border: 1px solid #ddd; color: #555; font-size: 12px; font-weight: 400; cursor: pointer;">
									<option>Select Category Name</option>
									<c:forEach items="${sessionScope.category }" var="a">

										<option value="${a.categoryId }">${a.categoryName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-md-3 control-label">Subcategory Name</label>
							<div class="col-md-5">
								<select name="subcategory" id="subcategory" 
											style="width: 100%; height: 30px; border: 1px solid #ddd; color: #555; font-size: 12px; font-weight: 400; cursor: pointer;">
									<option>Select Subcategory Name</option>
									<%-- <c:forEach items="${sessionScope.subcategory }" var="b">
                                                    <option value="${b.subcategoryId }">${b.subcategoryName }</option></c:forEach>
                                                     --%>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label">Property Description</label>
							<div class="col-md-5">
								<textarea name="propertyDesc" cols="5" rows="5" class="form-control"  ></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Property Type</label>
							<div class="col-md-5">
								<select  name="type" 
											style="width: 100%; height: 30px; border: 1px solid #ddd; color: #555; font-size: 12px; font-weight: 400; cursor: pointer;">
									<option value="buy">Buy</option>
									<option value="rent">Rent</option>
								</select>
							</div>
						</div>
							<div class="form-group">
							<label class="col-md-3 control-label">Eligible for Bid?</label>
							<div class="col-md-5">
							&nbsp;&nbsp;&nbsp;&nbsp;Yes<input type="radio"  name="bid" value="yes"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							No	<input type="radio"  name="bid" value="no" checked="checked"/>	
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-md-3 control-label">Country</label>
							<div class="col-md-5">
								<select name="countryId" id="countryId" onchange="loadState()"
											style="width: 100%; height: 30px; border: 1px solid #ddd; color: #555; font-size: 12px; font-weight: 400; cursor: pointer;">
									<option>Select Country</option>

									<c:forEach items="${sessionScope.country }" var="c">
										<option value="${c.countryId }">${c.countryName }</option>
									</c:forEach>

								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label">State</label>
							<div class="col-md-5">
								<select name="state" id="stateId" onchange="loadcity()"
											style="width: 100%; height: 30px; border: 1px solid #ddd; color: #555; font-size: 12px; font-weight: 400; cursor: pointer;">
									<option>Select State</option>
									<%--                                                 <c:forEach items="${sessionScope.state }" var="d">
                                                    <option value="${d.stateId }">${d.stateName }</option></c:forEach>
 --%>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label">City</label>
							<div class="col-md-5">
								<select name="city" id="cityId"
											style="width: 100%; height: 30px; border: 1px solid #ddd; color: #555; font-size: 12px; font-weight: 400; cursor: pointer;">
									<option>Select City</option>
									<%--                                            <c:forEach items="${sessionScope.city }" var="d">
                                                    <option value="${d.cityId }">${d.cityName }</option></c:forEach>
      --%>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label">Area</label>
							<div class="col-md-5">
								<input type="text" class="form-control" name="area"
									placeholder="Enter the area" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label">Longitude</label>
							<div class="col-md-5">
								<input type="text" class="form-control"
									placeholder="Value of Longitude" name="longitude" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label">Lattiitude</label>
							<div class="col-md-5">
								<input type="text" class="form-control"
									placeholder="Value of Lattitude" name="lattitude" />
							</div>
						</div>


						<div class="form-group">
							<label class="col-md-3 control-label">Image</label>
							<div class="col-md-8">

								<iframe src="imageupload.jsp" width="100%" height="250">
								</iframe>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label">Price</label>
							<div class="col-md-5">
								<input type="text" class="form-control" name="price"
									placeholder="Some value..." />
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Status</label>
							<div class="col-md-5">
								<select  name="status" 
											style="width: 100%; height: 30px; border: 1px solid #ddd; color: #555; font-size: 12px; font-weight: 400; cursor: pointer;">
									<option value="ongoing">Ongoing</option>
									<option value="completed">Completed</option>
									<option value="upcoming">Upcoming</option>
								</select>
							</div>
						</div>
						
						<input type="hidden" name="flag" value="1">
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
			ignore : [],
			rules : {
				login : {
					required : true,
					minlength : 2,
					maxlength : 8
				},
				password : {
					required : true,
					minlength : 5,
					maxlength : 10
				},
				're-password' : {
					required : true,
					minlength : 5,
					maxlength : 10,
					equalTo : "#password2"
				},
				age : {
					required : true,
					min : 18,
					max : 100
				},
				email : {
					required : true,
					email : true
				},
				date : {
					required : true,
					date : true
				},
				credit : {
					required : true,
					creditcard : true
				},
				site : {
					required : true,
					url : true
				}
			}
		});
	</script>

	<!-- END SCRIPTS -->

</body>
</html>