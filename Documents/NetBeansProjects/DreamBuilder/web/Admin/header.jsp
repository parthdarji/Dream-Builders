<%@page import="org.apache.catalina.connector.Request"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="function" uri = "http://java.sun.com/jsp/jstl/functions"%>
<ul class="x-navigation x-navigation-horizontal x-navigation-panel">
                    <!-- TOGGLE NAVIGATION -->
                    <li class="xn-icon-button">
                        <a class="x-navigation-minimize" href="#"><span class="fa fa-dedent"></span></a>
                    </li>
                    
                    
                    <!-- END TOGGLE NAVIGATION -->
                    <!-- SEARCH -->
                    <li class="xn-search">
                        <form role="form">
                            <input type="text" placeholder="Search..." name="search">
                        </form>
                    </li>   
                    <!-- END SEARCH -->                    
                    <!-- POWER OFF -->
                    <li class="xn-icon-button pull-right last">
                        <a href="<%=request.getContextPath()%>/loginfilter?logout=logout"><span class="fa fa-power-off"></span></a>
                                              
                    </li> 
                    <!-- END POWER OFF -->                    
                     <!-- MESSAGES -->
              <%--       <li class="xn-icon-button pull-right">
                        <a href="#"><span class="fa fa-comments"></span></a>
                        <div class="informer informer-danger">4</div>
                        <div class="panel panel-primary animated zoomIn xn-drop-left xn-panel-dragging">
                            <div class="panel-heading">
                                <h3 class="panel-title"><span class="fa fa-comments"></span> Messages</h3>                                
                                <div class="pull-right">
                                    <span class="label label-danger">4 new</span>
                                </div>
                            </div>
                            <div style="height: 200px;" class="panel-body list-group list-group-contacts scroll">
                                <a class="list-group-item" href="#">
                                    <div class="list-group-status status-online"></div>
                                    <img alt="John Doe" class="pull-left" src="<%=request.getContextPath() %>/img/user2.jpg">
                                    <span class="contacts-title">John Doe</span>
                                    <p>Praesent placerat tellus id augue condimentum</p>
                                </a>
                                <a class="list-group-item" href="#">
                                    <div class="list-group-status status-away"></div>
                                    <img alt="Dmitry Ivaniuk" class="pull-left" src="<%=request.getContextPath() %>/img/user.jpg">
                                    <span class="contacts-title">Dmitry Ivaniuk</span>
                                    <p>Donec risus sapien, sagittis et magna quis</p>
                                </a>
                                <a class="list-group-item" href="#">
                                    <div class="list-group-status status-away"></div>
                                    <img alt="Nadia Ali" class="pull-left" src="<%=request.getContextPath() %>/img/user3.jpg">
                                    <span class="contacts-title">Nadia Ali</span>
                                    <p>Mauris vel eros ut nunc rhoncus cursus sed</p>
                                </a>
                                <a class="list-group-item" href="#">
                                    <div class="list-group-status status-offline"></div>
                                    <img alt="Darth Vader" class="pull-left" src="<%=request.getContextPath() %>/img/user6.jpg">
                                    <span class="contacts-title">Darth Vader</span>
                                    <p>I want my money back!</p>
                                </a>
                            </div>     
                            <div class="panel-footer text-center">
                                <a href="pages-messages.html">Show all messages</a>
                            </div>                            
                        </div>                        
                    </li>
               --%>      <!-- END MESSAGES -->
                    <!-- TASKS --> 
                    
                    
                    <li class="xn-icon-button pull-right">
                    	
                        <a href="#"><span class="fa fa-bell"></span></a>
                        <c:set var="compl" value="${sessionScope.complainlstfl }"></c:set>
           <c:set var="len" value = "${function:length(compl) }"></c:set>
                        <div class="informer informer-warning"> ${len }</div>
                        
                        <div class="panel panel-primary animated zoomIn xn-drop-left xn-panel-dragging">
                            <div class="panel-heading">
                                <h3 class="panel-title"><span class="fa fa-bell"></span> COMPLAINTS</h3>                                
                                <div class="pull-right">
                                    <span class="label label-warning">Recents</span>
                                </div>
                            </div>
                            
              
               
                            <div style="color:white" class="panel-body list-group scroll" style="height: 200px;">                                
                ${sessionScope.complainlstfl}---------
                 <c:forEach var="i" items="${sessionScope.complainlstfl}">
                                <a class="list-group-item" href="<%=request.getContextPath() %>/ComplainController?flag=searchcomplain">
                                    <strong>
                                    <h5>
                                    ${i.title}
                                    </h5>
                                    </strong>
                                </a>
               </c:forEach>  
                                
                                         </div>     
                            <div class="panel-footer text-center">
                                <a href="<%=request.getContextPath()%>/Admin/search_complaint.jsp">Show all tasks</a>
                            </div>                            
                        </div>                        
                    </li>
                    
                    
                    
        <!--             
                    <li class="xn-icon-button pull-right">
                        <a href="#"><span class="fa fa-tasks"></span></a>
                        <div class="informer informer-warning">3</div>
                        <div class="panel panel-primary animated zoomIn xn-drop-left xn-panel-dragging">
                            <div class="panel-heading">
                                <h3 class="panel-title"><span class="fa fa-tasks"></span> Tasks</h3>                                
                                <div class="pull-right">
                                    <span class="label label-warning">3 active</span>
                                </div>
                            </div>
                            <div style="height: 200px;" class="panel-body list-group scroll">                                
                                <a href="#" class="list-group-item">
                                    <strong>Phasellus augue arcu, elementum</strong>
                                    <div class="progress progress-small progress-striped active">
                                        <div style="width: 50%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar" class="progress-bar progress-bar-danger">50%</div>
                                    </div>
                                    <small class="text-muted">John Doe, 25 Sep 2014 / 50%</small>
                                </a>
                                <a href="#" class="list-group-item">
                                    <strong>Aenean ac cursus</strong>
                                    <div class="progress progress-small progress-striped active">
                                        <div style="width: 80%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar progress-bar-warning">80%</div>
                                    </div>
                                    <small class="text-muted">Dmitry Ivaniuk, 24 Sep 2014 / 80%</small>
                                </a>
                                <a href="#" class="list-group-item">
                                    <strong>Lorem ipsum dolor</strong>
                                    <div class="progress progress-small progress-striped active">
                                        <div style="width: 95%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="95" role="progressbar" class="progress-bar progress-bar-success">95%</div>
                                    </div>
                                    <small class="text-muted">John Doe, 23 Sep 2014 / 95%</small>
                                </a>
                                <a href="#" class="list-group-item">
                                    <strong>Cras suscipit ac quam at tincidunt.</strong>
                                    <div class="progress progress-small">
                                        <div style="width: 100%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="100" role="progressbar" class="progress-bar">100%</div>
                                    </div>
                                    <small class="text-muted">John Doe, 21 Sep 2014 /</small><small class="text-success"> Done</small>
                                </a>                                
                            </div>     
                            <div class="panel-footer text-center">
                                <a href="pages-tasks.html">Show all tasks</a>
                            </div>                            
                        </div>                        
                    </li> -->
                    <!-- END TASKS -->
                    <!-- LANG BAR -->
                    <li class="xn-icon-button pull-right">
                        <a href="#"><span class="flag flag-gb"></span></a>
                        <ul class="xn-drop-left xn-drop-white animated zoomIn">
                            <li><a href="#"><span class="flag flag-gb"></span> English</a></li>
                            <li><a href="#"><span class="flag flag-de"></span> Deutsch</a></li>
                            <li><a href="#"><span class="flag flag-cn"></span> Chinese</a></li>
                        </ul>                        
                    </li> 
                    <!-- END LANG BAR -->
                </ul>