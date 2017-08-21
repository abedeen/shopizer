<%
response.setCharacterEncoding("UTF-8");
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", -1);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="/WEB-INF/shopizer-tags.tld" prefix="sm" %>
<%@ taglib uri="/WEB-INF/shopizer-functions.tld" prefix="display" %> 
 
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
aa<sm:pageContent contentCode="logo"/>aa
    <!-- Custom styles for this template -->
    <link href="/resources/css/shop-homepage.css" rel="stylesheet">
<script src="https://use.fontawesome.com/d05bde57d0.js"></script>
<script src="/resources/templates/exoticamobilia/js/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="/resources/js/hogan.js"></script>
<script src="/resources/templates/exoticamobilia/js/bloodhound.min.js"></script>
<script src="/resources/templates/exoticamobilia/js/typeahead.bundle.min.js"></script>

<script src="/resources/templates/exoticamobilia/js/bootstrap.js"></script>
<script src="/resources/templates/exoticamobilia/js/isotope.js"></script>
<script src="/resources/templates/exoticamobilia/js/jquery.event.move.js"></script>
<script src="/resources/templates/exoticamobilia/js/jquery.appear.js"></script>
<script src="/resources/templates/exoticamobilia/js/modernizr.js"></script>
<script src="/resources/templates/exoticamobilia/js/owl.carousel.min.js"></script>
<script src="/resources/templates/exoticamobilia/js/template.js"></script>
<script src="/resources/js/shop-functions.js"></script>
<script src="/resources/js/shop-customer.js"></script>
<script src="/resources/js/json2.js"></script>
<script src="/resources/js/js.cookie.js"></script>


</head>