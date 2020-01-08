<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <header class="navbar navbar-inverse navbar-fixed-top " role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <i class="fa fa-bars"></i>
                </button>
                 <a class="navbar-brand" href="index.jsp"><h1><span class="pe-7s-gleam bounce-in"></span> IMPACT</h1></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about-us.jsp">About Us</a></li>
                    <li><a href="services.jsp">Services</a></li>
                    <li><a href="portfolio.jsp">Portfolio</a></li>
                    <li><a href="blog.jsp">Blog</a></li>
                    <li><a href="contact-us.jsp">Contact</a></li>
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="project-item.jsp">Project Single</a></li>
                            <li><a href="blog-item.jsp">Blog Single</a></li>
                            <li class="active"><a href="404.jsp">404</a></li>
                        </ul>
                    </li>
                    <li><span class="search-trigger"><i class="fa fa-search"></i></span></li>
                </ul>
            </div>
        </div>
    </header><!--/header-->

</body>
</html>