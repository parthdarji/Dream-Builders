<!-- Start Header -->
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="header-wrapper">

    <div class="container"><!-- Start Header Container -->

        <header id="header" class="clearfix">

            <div id="header-top" class="clearfix">

                <h2 id="contact-email">
                    <i class="email"></i> Email us at : <a href="mailto:parth4@hotmail.com">abc@hotmail.com</a>
                </h2>

                <!-- Social Navigation -->
                <ul class="social_networks clearfix">
                    <li class="facebook">
                        <a target="_blank" href="https://www.facebook.com"><i class="icon-facebook"></i></a>
                    </li>
                    <li class="twitter">
                        <a target="_blank" href="https://twitter.com"><i class="icon-twitter"></i></a>
                    </li>
                    <li class="gplus">
                        <a target="_blank" href="https://plus.google.com"><i class="icon-google-plus"></i></a>
                    </li>
                    <li class="rss">
                        <a target="_blank" href="#"> <i class="icon-rss"></i></a>
                    </li>
                    
                </ul>
              
                 <h2 id="contact-email">
                    <i class="email"></i> : <c:if test="${not empty sessionScope.loginId }"><a href="<%=request.getContextPath()%>/loginfilter?logout=logout">Logout</a></c:if>
                    <c:if test="${empty sessionScope.loginId }"><a href="<%=request.getContextPath()%>/User/login.jsp">Login</a></c:if>
         
               </h2>

            </div>
 		

            <!-- Logo -->
            <div id="logo">

                <a title="Real Homes" href="realhomes.jsp">
                    <img src="img/logo.png" alt="Real Homes">
                </a>

                
            </div>


            <div class="menu-and-contact-wrap">

                <h2  class="contact-number"><i class="icon-phone">1800-233-0233</i> </span></h2>
                <!-- Start Main Menu-->
                <nav class="main-menu">
                    <div class="menu-main-menu-container">
                        <ul id="menu-main-menu" class="clearfix">
                            <li class="current-menu-item current_page_item"><a href="<%=request.getContextPath() %>/HomeController">Home</a></li>
                            <li><a href="simple-listing.jsp">Listing</a>
                                <ul>
                                    <li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchPropertyUser">Simple Listing</a></li>
                                   <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
                                   <c:forEach items="${sessionScope.category}" var="a">
                                    <li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchPropertyCommercial&id=${a.categoryId}">${a.categoryName }</a></li>
                               </c:forEach>
                                </ul>
                            </li>
                         <!--   <li><a href="news.jsp">Projects</a>  -->
                                  <li><a href="#">Projects</a>
                                <ul>
                                    <li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchPropertyOngoing">OnGoing Projects</a> </li>
                                    <li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchPropertyUpcoming">UpComing Projects</a> </li>
                                 	<li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchPropertyCompleted">Completed Projects</a> </li>
                                    
                                       
                                </ul>
                            </li>
                            <li><a >People's Choice</a>
                                <ul>
                                    <li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchPropertyBid"">Properties for Bid</a></li>
                                    <li><a href="three-columns-gallery.jsp">3 Columns Gallery</a></li>
                                    
                                </ul>
                            </li>
                            <li><a href="#">More</a>
                                <ul>
                                    <li><a href="form-complain.jsp">Complain</a></li>
                                    <li><a href="form-feedback.jsp">Feedback</a></li>
                                    <li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchPropertySale">On Sale</a></li>
                                    <li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchPropertyRent">Rent</a></li>
                                    <li><a href="agents.jsp">Agents</a></li>
                                    <li><a href="agent-properties.jsp">Agent Properties</a></li>
                                   
                                    
                                    <li><a href="404.jsp">404</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Types</a>
                                <ul class="sub-menu">
                                    <li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchPropertyRent">Rent</a></li>
                                    <li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchPropertyBuy">Buy</a></li>
                                   
                                </ul>
                            </li>
                            <li><a href="contact-us.jsp">Contact us</a></li>
                        </ul>


                    </div>
                </nav><!-- End Main Menu -->

            </div><!-- End .menu-and-contact-wrap -->

        </header>

    </div> <!-- End Header Container -->

</div><!-- End Header -->
