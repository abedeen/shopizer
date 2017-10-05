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
<%@ taglib uri="/WEB-INF/shopizer-tags.tld" prefix="sm" %> 
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 
 
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<head>
</head>
    <!-- Footer -->
<!--div id="foot">
<div class="main">
<p id="back-top">
<a href="#top"><span></span></a></p>
<div class="space">
<div class="wrapper">
<div class="footerText">
<div class="footer1">Copyright © 2017 Asian Grocery. All Rights Reserved.</div>
<div class="footer2"><a href="https://www.joomla.org">Joomla!</a> is Free Software released under the <a href="https://www.gnu.org/licenses/gpl-2.0.html">GNU.</a></div>
<!--{%FOOTER_LINK} -->
</div></div></div></div></div-->
    <!-- Bootstrap core JavaScript -->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/popper/popper.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>