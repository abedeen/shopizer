
<%
	response.setCharacterEncoding("UTF-8");
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="/WEB-INF/shopizer-tags.tld" prefix="sm"%>
<%@ taglib uri="/WEB-INF/shopizer-functions.tld" prefix="display"%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<sm:pageContent contentCode="logo" />
<!-- Custom styles for this template -->
<link href="/resources/css/shop-homepage.css" rel="stylesheet">
<script src="https://use.fontawesome.com/d05bde57d0.js"></script>
<script
	src="/resources/templates/exoticamobilia/js/jquery-1.11.1.min.js"></script>

<script src="/resources/js/hogan.js"></script>
<script src="/resources/templates/exoticamobilia/js/bloodhound.min.js"></script>
<script
	src="/resources/templates/exoticamobilia/js/typeahead.bundle.min.js"></script>

<script src="/resources/templates/exoticamobilia/js/bootstrap.js"></script>
<script src="/resources/templates/exoticamobilia/js/isotope.js"></script>
<script
	src="/resources/templates/exoticamobilia/js/jquery.event.move.js"></script>
<script src="/resources/templates/exoticamobilia/js/jquery.appear.js"></script>
<script src="/resources/templates/exoticamobilia/js/modernizr.js"></script>
<script src="/resources/templates/exoticamobilia/js/owl.carousel.min.js"></script>
<script src="/resources/templates/exoticamobilia/js/template.js"></script>
<script src="/resources/js/shop-functions.js"></script> 
<script src="/resources/js/shop-customer.js"></script>
<script src="/resources/js/shop-minicart.js"></script>
<script src="/resources/js/json2.js"></script>
<script src="/resources/js/js.cookie.js"></script>
<div class="header-row">
	<div class="container">
		<div class="header">
			<div class="row">
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="moduletable moduletable__top-menu mod_menu">
						<div class="module_content">

							<ul class="menu menu__inline">
								<li class="item-126"><a href="http://www.gmail.com">Create
										an account</a></li>
								<li class="item-127"><a
									href="/virtuemart_51919/index.php/login">Login</a></li>
							</ul>
						</div>
					</div>
					<div class="moduletable  mod_search">
						<div class="module_content">
							<form action="/virtuemart_51919/index.php" method="post"
								class="form-inline">
								<div class="search-form search-form__">
									<div class="form-group">
										<input name="searchword" id="mod-search-searchword"
											maxlength="20" class="inputbox form-control" type="text"
											size="30" value="Search..."
											onblur="if (this.value=='') this.value='Search...';"
											onfocus="if (this.value=='Search...') this.value='';">
									</div>
									<button type="submit" title="Search" class="btn btn-search"
										onclick="this.form.searchword.focus();">
										<i class="fa fa-search"></i>
									</button>
									<input type="hidden" name="task" value="search"> <input
										type="hidden" name="option" value="com_search"> <input
										type="hidden" name="Itemid" value="121">
								</div>
							</form>
						</div>
					</div>

				</div>
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="site-logo site-logo__header">
						<a class="site-logo_link" href="/virtuemart_51919"> <img
							class="site-logo_img" src="/resources/img/logo.png" alt="">
						</a> <span class="site-desc"> </span>
					</div>

				</div>
		
		
                        </div-->
			</div>
		</div>
	</div>
</div>

</head>