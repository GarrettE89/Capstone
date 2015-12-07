<%-- 
    Document   : about
    Created on : Nov 20, 2015, 2:19:24 PM
    Author     : apprentice
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
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
                            <li class="active navList"><a href="${pageContext.request.contextPath}/about">About Us</a></li>
                            <li><a href="${pageContext.request.contextPath}/contact">Contact Us</a></li>
                            <li><a href="${pageContext.request.contextPath}/order">Order</a></li>
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
                    <div class="post">
                        <h1 id="aboutHeading">A little bit about our story...</h1>

                        <p>Curhl loves to cook soooooo much she opened a bakery. Her daughter is pretty crazy, and helps
                            out around the business as well. Go Curhl!
                        </p>
                    </div>
                </div>
            </div>  <!--container -->
            <!-- Placed at the end of the document so the pages load faster -->
            <script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
            <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


        </div> <!-- container -->

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
</body>
</html>