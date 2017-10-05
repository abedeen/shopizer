
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

<jsp:include page="/pages/shop/templates/exoticamobilia1/sections/jsLinks.jsp" />
<jsp:include page="/pages/shop/templates/exoticamobilia1/sections/shopLinks.jsp" />
	
</head>



<sm:pageContent contentCode="logo" />
<!-- Custom styles for this template -->
<section class="header">
<div class="header-row">
	<div class="container">
		<div class="header">
			<div class="row">
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="moduletable moduletable__top-menu mod_menu">
						<div class="module_content">

							<ul class="menu menu__inline">
								<li class="item-126">
	<a id="hidingLink" onClick="javascript:location.href='<c:url value="/shop/customer/registration.html" />';" href="" role="button" class="" data-toggle="modal"><s:message code="label.register.createanaccount" text="create an account" /></a>
</li>
								<li class="item-127">
								<!-- If display customer section -->
					<c:if test="${requestScope.CONFIGS['displayCustomerSection'] == true}">
					<sec:authorize access="hasRole('AUTH_CUSTOMER') and fullyAuthenticated">
						<!-- logged in user -->
						<c:if test="${requestScope.CUSTOMER!=null}">
						<script>$('#hidingLink').hide();</script>
							<ul class="logon-box pull-right">
							<li id="fat-menu" class="droDpdown">
							<a class="dropdown-toggle noboxshadow" data-toggle="dropdown" style="padding-left: 141px;" href="#">
							   <s:message code="label.generic.welcome" text="Welcome" /> 
							  
							 </a>
								<ul class="dropdown-menu" style="position: relative;">
									<li>
										<a style="color: black !important;font-size: 12px;" onClick="javascript:location.href='<c:url value="/shop/customer/dashboard.html" />';" href="#"><i class="fa fa-user"></i><c:out value="${sessionScope.CUSTOMER.billing.firstName}"/></a>
									</li>
									<li class="divider"></li>
									<li>
										<a style="color: black !important;font-size: 12px;" onClick="javascript:location.href='<c:url value="/shop/customer/logout" />';" href="#"><i class="fa fa-power-off"></i><s:message code="button.label.logout" text="Logout"/></a>
									</li>
								</ul>
							</li>
							</ul>
						</c:if>
					</sec:authorize>
					<sec:authorize access="!hasRole('AUTH_CUSTOMER') and fullyAuthenticated">
						<!-- no dual login -->
						<ul class="logon-box pull-right">
							<li>
								<s:message code="label.security.loggedinas" text="You are logged in as"/> [<sec:authentication property="principal.username"/>]. <s:message code="label.security.nologinacces.store" text="We can't display store logon box"/>
							</li>
						</ul>
					</sec:authorize>
					<sec:authorize access="!hasRole('AUTH_CUSTOMER') and !fullyAuthenticated">
					<!-- login box -->
					<ul class="">
					  <li id="fat-menu" class="dropddown">
					    <a href="#" id="signinDrop" role="button" class="dropdown-toggle noboxshadow" data-toggle="dropdown"><s:message code="button.label.signin" text="Signin" /><b class="caret"></b></a>
					
					
							<div id="signinPane" class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
								<div id="loginError" class="alert alert-error" style="display:none;"></div>
								<!-- form id must be login, form fields must be userName, password and storeCode -->
								<form id="login" method="post" accept-charset="UTF-8">
									<div class="control-group">
	                        				<label><s:message code="label.username" text="Username" /></label>
					                        <div class="controls">
												<input id="signin_userName" style="margin-bottom: 15px;" type="text" name="userName" size="30" />
											</div>
									</div>
									<div class="control-group">
	                        				<label><s:message code="label.password" text="Password" /></label>
					                        <div class="controls">
												<input id="signin_password" style="margin-bottom: 15px;" type="password" name="password" size="30" />
											</div>
									</div>
									<input id="signin_storeCode" name="storeCode" type="hidden" value="<c:out value="${requestScope.MERCHANT_STORE.code}"/>"/>					 
									<button type="submit" style="width:100%" class="btn btn-large" id="login-button"><s:message code="button.label.login" text="Login" /></button>
									
								</form>
								<a onClick="javascript:location.href='<c:url value="/shop/customer/registration.html" />';" href="" role="button" class="" data-toggle="modal"><s:message code="label.register.notyetregistered" text="Not yet registered ?" /></a>
							</div>
					  </li>
					</ul>
					</sec:authorize>
					</c:if></li>
							</ul>
						</div>
					</div>
					<div class="moduletable  mod_search">
						<div class="module_content">
							<form action=" " method="post"
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
						<a class="site-logo_link" href="#"> <img
							class="site-logo_img" src="/resources/img/logo.png" alt="">
						</a> <span class="site-desc"> </span>
					</div>

				</div>
		<div class="col-md-4 col-lg-4 col-sm-12">
                            	<div class="moduletable  mod_virtuemart_currencies">
				<div class="module_header">
			<h3 class="module_title">Currencies</h3>			
		</div>
				<div class="module_content">
			
<div class="mod-currency-selector ">	
	<form action="" method="post" class="form-inline">
				<select id="virtuemart_currency_id" name="virtuemart_currency_id" class="inputbox vm-chzn-select form-control" style="display: none;">
	<option value="47">Euro €</option>
	<option value="144" selected="selected">United States dollar $</option>
</select><span id="virtuemart_currency_idSelectBoxItContainer" class="selectboxit-container selectboxit-container" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" aria-owns="virtuemart_currency_idSelectBoxItOptions"><span id="virtuemart_currency_idSelectBoxIt" class="selectboxit inputbox vm-chzn-select form-control selectboxit-enabled selectboxit-btn" name="virtuemart_currency_id" tabindex="0" unselectable="on" style="width: 209px;"><span class="selectboxit-option-icon-container"><i id="virtuemart_currency_idSelectBoxItDefaultIcon" class="selectboxit-default-icon selectboxit-option-icon selectboxit-container" unselectable="on"></i></span><span id="virtuemart_currency_idSelectBoxItText" class="selectboxit-text" unselectable="on" data-val="144" aria-live="polite" style="max-width: 179px;">United States dollar $</span><span id="virtuemart_currency_idSelectBoxItArrowContainer" class="selectboxit-arrow-container" unselectable="on"><i id="virtuemart_currency_idSelectBoxItArrow" class="selectboxit-arrow fa fa-sort" unselectable="on"></i></span></span><ul id="virtuemart_currency_idSelectBoxItOptions" class="selectboxit-options selectboxit-list" tabindex="-1" style="min-width: 207px;" role="listbox" aria-hidden="true"><li data-id="0" data-val="47" data-disabled="false" class="selectboxit-option  selectboxit-option-first" role="option"><a class="selectboxit-option-anchor"><span class="selectboxit-option-icon-container"><i class="selectboxit-option-icon  selectboxit-container"></i></span>Euro €</a></li><li data-id="1" data-val="144" data-disabled="false" class="selectboxit-option  selectboxit-option-last selectboxit-selected" role="option"><a class="selectboxit-option-anchor"><span class="selectboxit-option-icon-container"><i class="selectboxit-option-icon  selectboxit-container"></i></span>United States dollar $</a></li></ul></span>
	    <!-- <input class="button btn btn-default" type="submit" name="submit" value="" /> -->
	</form>
</div>

		</div>
	</div>
                            <div class="clearfix"></div>
                            	<div class="moduletable  mod_virtuemart_cart_tm" style="height: 72px;width: 82px;">
				<div class="module_content">
			<!-- Virtuemart 2 Ajax Card -->
<div class="vmCartModule" id="vmCartModule">
	  <c:if test="${not fn:contains(requestScope['javax.servlet.forward.servlet_path'], 'order') && not fn:contains(requestScope['javax.servlet.forward.servlet_path'], 'cart')}">
				 				<!-- not displayed in checkout (order) and cart -->
				 				<div id="miniCart" class="btn-group pull-right">
				 					
									<button id="open-cart" class="cartbutton dropdown-toggle" type="button" data-toggle="dropdown" style="padding-top: 15px; margin-left: -15px;">
										
										<jsp:include page="/pages/shop/common/cart/minicartinfo.jsp" />
									</button>
				
									<ul class="dropdown-menu minicart" id="minicartComponent">
						              		<li>
												<jsp:include page="/pages/shop/common/cart/minicart.jsp" />
						              		</li>	
						            </ul>
								</div>
							</c:if>
	<div id="hiddencontainer" style="display:none">
		<div class="container">
			<div class="wrapper marg-bot sp">
				<div class="spinner"></div>
			<!-- Image line -->
				<div class="image">
				</div>
				<div class="fleft">
					<div class="product_row">
						<span class="product_name"></span><div class="clear"></div>
						<span class="quantity"></span><div class="prices" style="display:inline;"></div>
						<a class="vm2-remove_from_cart" onclick="remove_product_cart(this);"><i class="fa fa-times-circle"></i><span class="product_cart_id" style="display:none;"></span></a>
					</div>
					<div class="product_attributes"></div>
				</div>
			</div>
		</div>
	</div>
	<div id="cart_list" style="display: none;">
		<div class="text-cart">
			Your shopping cart is empty!		</div> 
		<div class="vm_cart_products" id="vm_cart_products">
								
		</div>
          <div class="total">
					</div>
		<div class="show_cart">
					</div>
	</div>
</div>
		</div>
	</div>
                        </div>
		
                        </div-->
			</div>
		</div>
	</div>
</div>
 </section>
 