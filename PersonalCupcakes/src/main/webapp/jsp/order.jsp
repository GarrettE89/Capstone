<%-- 
    Document   : order
    Created on : Nov 30, 2015, 1:04:00 PM
    Author     : apprentice
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cherry on Top Cupcakes</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/css/starter-template.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/MyCss.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">

    </head>
    <body>
        
        <div class="col-sm-offset-10 col-sm-2">
            <div id="sidebar">
                <form>
                    <p>Shopping Cart</p>
                </form>
                <hr/>
                <div id="shoppingCart">
                </div>
                <hr/>
                <button id="confirm">Confirm</button>
            </div>
        </div>
        
        <!-- Shopping Cart -->
        <div class="fluid-container col-md-12">
            <div class="fluid-container col-md-12" id="aboveNav">
                <!--Search bar--> 
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <a href="${pageContext.request.contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a>
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>

                <!--Logos-->
                <div class="container col-md-12">
                    <div class="row">
                        <div class="col-md-4"><img src="${pageContext.request.contextPath}/img/logo1.png" alt="this be erma"></div>
                        <div id="logo1"><img src="${pageContext.request.contextPath}/img/LogoFinal.png" alt="Cherry on Top Bakery"></div>
                        <div class="col-md-4"></div>
                    </div>
                </div>
            </div> <!-- closes aboveNav div -->
            <!--Navbar-->
            <nav class="navbar navbar-inverse col-md-12">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/about">About Us</a></li>
                            <li><a href="${pageContext.request.contextPath}/contact">Contact Us</a></li>
                            <li class="active navList"><a href="${pageContext.request.contextPath}/order">Order</a></li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </nav>

            <!--Map for left-sidebar-->
            <div class="container" id="belowNav">
                <div id="about-left-sidebar">
                    <div class="map">
                        <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" width="200" height="200" src="https://maps.google.com/maps?hl=en&q=252 E. Market St Louisville, Ky&ie=UTF8&t=hybrid&z=6&iwloc=B&output=embed"><div><small><a href="http://embedgooglemaps.com">embedgooglemaps.com</a></small></div><div><small><a href="http://buyproxies.io/">buy private proxies</a></small></div></iframe>
                    </div>
                    <div>
                        <p>Cherry on Top, LLC</p>
                        <p>1337 E. Sugar Lane</p>
                        <p>Louiscake, KY 40204</p>
                        <p>Phone: 1.800.CUPCAKE</p>
                        <p>Email: cehrl@cherryontop.com</p>
                        <i class="icon-facebook"></i>
                    </div>
                    <div class="navbar-text pull-left">
                        <a href="#"><i class="fa fa-facebook-square fa-2x"></i></a>
                        <a href="#"><i class="fa fa-twitter-square fa-2x"></i></a>
                        <a href="#"><i class="fa fa-google-plus-square fa-2x"></i></a>

                    </div>
                </div>
                
                <!--Text Box-->
                
                <div class="col-md-offset-3 col-md-6 col-md-offset-3"  id="content" style="border: 1px solid black">
                    <h2 id='orderHeader'>Curpcakes Fer Sale!!!!</h2>
                    <div id="items_div">
                        <div id="row1">
                            
                            <div class="col-sm-4">
                                <img src="img/cherry.jpg" alt="cherry" />
                                <p class="orderP">Price: 65&cent;</p> 
                                <div class="buttonHolder1"> <!-- button holding div -->
                                    <select class="dropdown" id="cherryToCart">
                                        <option value="blank">Quantity</option>
                                        <c:forEach begin="0" end="20" var="quantity">
                                            <option value='<c:out value="${quantity}"/>'>${quantity}</option>
                                        </c:forEach>
                                    </select>
                                    <button type="submit" id="addCherry" class="addButton">Add</button>
                                </div>
                            </div>
                            
                            <div class="col-sm-4">
                                <img src="img/beach.jpg" alt="beach" />
                                <p class="orderP">Price: 65&cent;</p>
                                <div class="buttonHolder1"> <!-- button holding div -->
                                    <select class="dropdown" id="beachToCart">
                                        <option value="blank">Quantity</option>
                                        <c:forEach begin="0" end="20" var="quantity">
                                            <option value='<c:out value="${quantity}"/>'>${quantity}</option>
                                        </c:forEach>
                                    </select>
                                    <button type="submit" id="addBeach" class="addButton">Add</button>
                                </div>
                                <p> </p>
                            </div>
                            <div class="col-sm-4">
                                <img src="img/creamcheese.jpg" alt="cream cheese" />
                                <p class="orderP">Price: 65&cent;</p>
                                <div class="buttonHolder1"> <!-- button holding div -->
                                    <select class="dropdown" id="creamCheeseToCart">
                                        <option value="blank">Quantity</option>
                                        <c:forEach begin="0" end="20" var="quantity">
                                            <option value='<c:out value="${quantity}"/>'>${quantity}</option>
                                        </c:forEach>
                                    </select>
                                    <button type="submit" id="addCreamCheese" class="addButton">Add</button>
                                </div>
                                <p> </p>
                            </div>
                            <div class="col-sm-4">
                                <img src="img/doggie.jpg" alt="Doggie" />
                                <p class="orderP">Price: 65&cent;</p>
                                <div class="buttonHolder1"> <!-- button holding div -->
                                    <select class="dropdown" id="doggieToCart">
                                        <option value="blank">Quantity</option>
                                        <c:forEach begin="0" end="20" var="quantity">
                                            <option value='<c:out value="${quantity}"/>'>${quantity}</option>
                                        </c:forEach>
                                    </select>
                                    <button type="submit" id="addDoggie" class="addButton">Add</button>
                                </div>
                                <p> </p>
                            </div>
                        </div>
                        <div id="row2">
                            <div class="col-sm-4">
                                <img src="img/blackberry.jpg" alt="Blackberry" />
                                <p class="orderP">Price: 65&cent;</p>
                                <div class="buttonHolder1"> <!-- button holding div -->
                                    <select class="dropdown" id="blackberryToCart">
                                        <option value="blank">Quantity</option>
                                        <c:forEach begin="0" end="20" var="quantity">
                                            <option value='<c:out value="${quantity}"/>'>${quantity}</option>
                                        </c:forEach>
                                    </select>
                                    <button type="submit" id="addBlackberry" class="addButton">Add</button>
                                </div>
                                <p> </p>
                            </div>
                            <div class="col-sm-4">
                                <img src="img/dragon.jpg" alt="Dragon" />
                                <p class="orderP">Price: 65&cent;</p>
                                <div class="buttonHolder1"> <!-- button holding div -->
                                    <select class="dropdown" id="dragonToCart">
                                        <option value="blank">Quantity</option>
                                        <c:forEach begin="0" end="20" var="quantity">
                                            <option value='<c:out value="${quantity}"/>'>${quantity}</option>
                                        </c:forEach>
                                    </select>
                                    <button type="submit" id="addDragon" class="addButton">Add</button>
                                </div>
                                <p> </p>
                            </div>
                            <div class="col-sm-4">
                                <img src="img/father.jpg" alt="Father's Day" />
                                <p class="orderP">Price: 75&cent;</p>
                                <div class="buttonHolder1"> <!-- button holding div -->
                                    <select class="dropdown" id="fatherToCart">
                                        <option value="blank">Quantity</option>
                                        <c:forEach begin="0" end="20" var="quantity">
                                            <option value='<c:out value="${quantity}"/>'>${quantity}</option>
                                        </c:forEach>
                                    </select>
                                    <button type="submit" id="addFather" class="addButton">Add</button>
                                </div>
                                <p> </p>
                            </div>
                            <div class="col-sm-4">
                                <img src="img/rum.jpg" alt="Coconut Rum" />
                                <p class="orderP">Price: 75&cent;</p>
                                <div class="buttonHolder1"> <!-- button holding div -->
                                    <select class="dropdown" id="rumToCart">
                                        <option value="blank">Quantity</option>
                                        <c:forEach begin="0" end="20" var="quantity">
                                            <option value='<c:out value="${quantity}"/>'>${quantity}</option>
                                        </c:forEach>
                                    </select>
                                    <button type="submit" id="addRum" class="addButton">Add</button>
                                </div>
                                <p> </p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <img src="img/redvelvet.jpg" alt="Red Velvet" />
                            <p class="orderP">Price: 75&cent;</p>
                            <div class="buttonHolder1"> <!-- button holding div -->
                                <select class="dropdown" id="redVelvetToCart">
                                    <option value="blank">Quantity</option>
                                    <c:forEach begin="0" end="20" var="quantity">
                                        <option value='<c:out value="${quantity}"/>'>${quantity}</option>
                                    </c:forEach>
                                </select>
                                <button type="submit" id="addRedVelvet" class="addButton">Add</button>
                            </div>
                            <p> </p>
                        </div>
                    </div>
                </div>
            </div>  <!--container -->
            <!-- Placed at the end of the document so the pages load faster -->



            <!--  </div>  container -->

            <div class="navbar2 navbar-bottom" id="footerBar" role="navigation">
                <div class="container">
                    <div class="navbar-text pull-left">
                        <p>&#169; 2015 Cherry on Top Bakery</p>
                    </div>
                    <div class="navbar-text pull-right">
                        <p>Powered By Team Cupcake</p>
                    </div>
                </div>
            </div>
        </div> <!-- container -->

        <script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/order.js"></script>
    </body>
</html>