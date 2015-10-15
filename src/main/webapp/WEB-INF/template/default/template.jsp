<%@ page import="ru.trustsystem.businesslogic.PageHelper" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title>${title}</title>

        <link href="<spring:url value="/assets/favicon.ico"/>" rel="shortcut icon" type="image/x-icon" />
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,500italic,700italic,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="<spring:url value="/assets/css/bootstrap.css"/>" type="text/css" />
        <link rel="stylesheet" href="<spring:url value="/assets/css/bootstrap.icon-large.min.css"/>" type="text/css"/>

        <link rel="stylesheet" href="<spring:url value="/assets/css/font-awesome.css"/>" type="text/css" />

        <link rel="stylesheet" href="<spring:url value="/assets/css/all.css"/>" type="text/css" />
        <link rel="stylesheet" href="<spring:url value="/assets/css/home.css"/>" type="text/css"/>

        <link rel="stylesheet" href="<spring:url value="/assets/css/owl.carousel.css"/>" type="text/css"/>
        <link rel="stylesheet" href="<spring:url value="/assets/css/page_pricing.css"/>" type="text/css" />
        <link rel="stylesheet" href="<spring:url value="/assets/css/unify.css"/>" type="text/css" />

        <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script src="<spring:url value="/assets/js/bootstrap.min.js"/>"></script>
        <script src="<spring:url value="/assets/js/unify/back-to-top.js"/>"></script>
    </head>
<body>
<div id="wrap" class="margin-bottom-60">
    <div id="header">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/"></a>
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                    <jsp:include page="../../fragments/login.jsp" />
                </div><!--/.navbar-collapse -->
            </div>
        </nav>


        <nav class="navbar search-panel">
            <div class="container">
                <ul class="nav nav-pills pull-left">
                    <%--<li role="presentation"><a href="#"><img src="@Url.Content("~/images/ico_vk.jpg")" alt=""/></a></li>--%>
                    <%--<li role="presentation"><a href="#"><img src="@Url.Content("~/images/ico_fb.jpg")" alt=""/></a></li>--%>
                    <%--<li role="presentation"><a href="#"><img src="@Url.Content("~/images/ico_tw.jpg")" alt=""/></a></li>--%>
                    <%--<li role="presentation"><a href="#"><img src="@Url.Content("~/images/ico_gplus.jpg")" alt=""/></a></li>--%>
                </ul>

                <div class="search">
                    <form action="/home/search" class="navbar-form navbar-right" method="get">
                        <input class="form-control" id="search_field" name="txtValue" placeholder="Find company..." value="" type="text">
                        <input class="btn btn-primary" value="Search" type="submit">
                    </form>
                </div>
            </div>
        </nav>
    </div><!-- header -->

    <div id="main">
        <div class="container">
            <!-- div alert message FLASH -->

            <!-- Example row of columns -->
            <tiles:insertAttribute name="body" />
        </div> <!-- /container -->
    </div><!-- main -->
</div><!-- wrap -->


    <tiles:insertAttribute name="footer" />

    <div id="top" style="position: fixed; bottom: 5px; right: 5px; opacity: 1; cursor: pointer;" title="Scroll Back to Top"></div>

</body>
</html>


<%--<div class="page">--%>
  <%--<tiles:insertAttribute name="header" />--%>
  <%--<div class="content">--%>
    <%--<tiles:insertAttribute name="menu" />--%>
    <%--<tiles:insertAttribute name="body" />--%>
  <%--</div>--%>
  <%--<tiles:insertAttribute name="footer" />--%>
<%--</div>--%>