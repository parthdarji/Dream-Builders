<div class="page-sidebar">
                <!-- START X-NAVIGATION -->
                <ul class="x-navigation">
                    <li class="xn-logo">
                        <a href="index.jsp">ATLANT</a>
                        <a class="x-navigation-control" href="#"></a>
                    </li>
                    <li class="xn-profile">
                        <a class="profile-mini" href="#">
                            <img alt="John Doe" src="<%=request.getContextPath() %>/Admin/img/Guitar_Guy.jpg">
                        </a>
                        <div class="profile">
                            <div class="profile-image">
                                <img alt="John Doe" src="<%=request.getContextPath() %>/Admin/img/Guitar_Guy.jpg">
                            </div>
                            <div class="profile-data">
                                <div class="profile-data-name">NYIT</div>
                                <div class="profile-data-title">Web Developers/Designers</div>
                            </div>
                            <div class="profile-controls">
                                <a class="profile-control-left" href="pages-profile.jsp"><span class="fa fa-info"></span></a>
                                <a class="profile-control-right" href="pages-messages.jsp"><span class="fa fa-envelope"></span></a>
                            </div>
                        </div>                                                                        
                    </li>
                    <li class="xn-title">Navigation</li>
                    <li class="active">
                        <a href="index.jsp"><span class="fa fa-desktop"></span> <span class="xn-text">Dashboard</span></a>                        
                    </li>
                    
                   
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage Category</span></a>
                        <ul>
                            <li><a href="form-managecategory.jsp"><span class="fa fa-image"></span>Add category </a></li>
                            
                            <li><a href="<%=request.getContextPath() %>/CategoryController?flag=searchCategory"><span class="fa fa-wrench"></span>search category</a></li>
                                                       
                        </ul>
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage SubCategory</span></a>
                        <ul>
                            <li><a href="<%=request.getContextPath() %>/SubcategoryController?flag=subcategory"><span class="fa fa-image"></span>Add SubCategory </a></li>
                            
                            <li><a href="<%=request.getContextPath() %>/SubcategoryController?flag=searchSubcategory"><span class="fa fa-wrench"></span>search SubCategory</a></li>
                                                       
                        </ul>
                    </li>
                       <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage Property</span></a>
                        <ul>
                            <li><a href="<%=request.getContextPath() %>/PropertyController?flag=property"><span class="fa fa-image"></span>Add Property </a></li>
                            
                            <li><a href="<%=request.getContextPath() %>/PropertyController?flag=searchProperty"><span class="fa fa-wrench"></span>search Property</a></li>
                                                       
                        </ul>
                    </li>
                 	 <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage Slider</span></a>
                        <ul>
                            <li><a href="<%=request.getContextPath() %>/PropertyController?flag=sliderImg"><span class="fa fa-image"></span>Add Slider</a></li>
                            
                            <li><a href="<%=request.getContextPath() %>/StateController?flag=searchstate"><span class="fa fa-wrench"></span>search Slider</a></li>
                                                       
                        </ul>
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage Bids</span></a>
                        <ul>
                            
                            
                            <li><a href="<%=request.getContextPath() %>/BidController?flag=searchbids"><span class="fa fa-wrench"></span>search Bids</a></li>
                                                       
                        </ul>
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage Country</span></a>
                        <ul>
                            <li><a href="form-managecountry.jsp"><span class="fa fa-image"></span>Add Country </a></li>
                            
                            <li><a href="<%=request.getContextPath() %>/CountryController?flag=searchCountry""><span class="fa fa-wrench"></span>search Country</a></li>
                                                       
                        </ul>
                    </li>
                 
                      <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage State</span></a>
                        <ul>
                            <li><a href="<%=request.getContextPath() %>/StateController?flag=country"><span class="fa fa-image"></span>Add State </a></li>
                            
                            <li><a href="<%=request.getContextPath() %>/StateController?flag=searchstate"><span class="fa fa-wrench"></span>search state</a></li>
                                                       
                        </ul>
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage City</span></a>
                        <ul>
                            <li><a href="<%=request.getContextPath() %>/CityController?flag=city"><span class="fa fa-image"></span>Add city </a></li>
                            
                            <li><a href="<%=request.getContextPath() %>/CityController?flag=searchcity"><span class="fa fa-wrench"></span>search city</a></li>
                                                       
                        </ul>
                    </li>
                 
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage Area</span></a>
                        <ul>
                            <li><a href="form-managearea.jsp"><span class="fa fa-image"></span>Add Area</a></li>
                            
                            <li><a href="pages-edit-profile.jsp"><span class="fa fa-wrench"></span>search Area</a></li>
                                                       
                        </ul>
                    </li>
                 
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage Estate For Rent</span></a>
                        <ul>
                            <li><a href="form-manageforrent.jsp"><span class="fa fa-image"></span>Add Estate For Rent </a></li>
                            
                            <li><a href="pages-edit-profile.jsp"><span class="fa fa-wrench"></span>search Estate For Rent</a></li>
                                                       
                        </ul>
                    </li>
                    
                 <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage Pictures Gellery</span></a>
                        <ul>
                            <li><a href="form-managegellery.jsp"><span class="fa fa-image"></span>Add Gellery </a></li>
                            
                            <li><a href="pages-edit-profile.jsp"><span class="fa fa-wrench"></span>search Gellery</a></li>
                                                       
                        </ul>
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Manage Complains</span></a>
                        <ul>
                            
                            
                            <li><a href="<%=request.getContextPath() %>/ComplainController?flag=searchcomplain"><span class="fa fa-wrench"></span>search Complains</a></li>
                                                       
                        </ul>
                    </li>
                    <li class="xn-openable">
                        <a href=""><span class="fa fa-files-o"></span> <span class="xn-text">Manage Feedback</span></a>
                        <ul>
                            
                            
                            <li><a href="<%=request.getContextPath() %>/FeedbackController?flag=searchFeedback"><span class="fa fa-wrench"></span>search Feedback</a></li>
                                                       
                        </ul>
                    </li>
                    
                     
                    
                <!-- END X-NAVIGATION -->
            </div>