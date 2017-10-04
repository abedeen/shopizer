
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

<title>Asian Grocery</title>

<!-- Bootstrap core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<sm:pageContent contentCode="logo" />
<!-- Custom styles for this template -->
<script src="https://use.fontawesome.com/d05bde57d0.js"></script>
<div id="header1">
<div class="hor_line"></div>
<div class="main">
<div class="logoheader">
<h5 id="logo">
<a href="http://localhost:8080/shop"><img src="resources/img/logo2.png" alt=""></a>
<span class="header1">
</span></h5></div>
    
<div id="topmenu">
<div class="moduletable">
<script type="text/javascript" src="https://livedemo00.template-help.com/virtuemart_46736/modules/mod_superfish_menu/js/superfish.js"></script>
<script type="text/javascript" src="https://livedemo00.template-help.com/virtuemart_46736/modules/mod_superfish_menu/js/jquery.hoverIntent.js"></script>

<ul id="nav_top" class="sf_menu  sf-js-enabled">
<li class="item-444 deeper parent">
<span class="Arrowdown"></span>
<a href="#">Online Store</a>
<ul class="sub-menu2" style="display: none;">
<li class="item-476">
<a href="#">Manufacturer Default Layout</a></li>
<li class="item-482">
<a href="#">Display Vendor contact</a></li>
<li class="item-478">
<a href="#">List Orders</a></li>
<li class="item-481">
<a href="#">User Edit Address</a></li>
<li class="item-486">
<a href="#">Category Layout</a></li></ul></li>
<li class="item-207"><a href="#">About Us</a></li>
<li class="item-471"><a href="#">Delivery</a></li>
<li class="item-472"><a href="#">FAQs</a></li>
<li class="item-470"><a href="#">Contacts</a></li></ul>
<script type="text/javascript">
	// initialise plugins
	jQuery(function(){
		jQuery('ul.sf_menu').superfish({
		    hoverClass:    'sfHover',         
		    pathClass:     'overideThisToUse',
		    pathLevels:    1,    
		    delay:         500, 
		    animation:     {opacity:'show'}, 
		    speed:         'normal',   
		    dropShadows:   false, 
		    disableHI:     false, 
		    easing:        "swing"
		});
	});
</script></div></div>
    
<div class="cart">
<div class="moduletable">
<h3>Shopping Cart:</h3>
<!-- Virtuemart 2 Ajax Card -->
<div class="vmCartModule" id="vmCartModule">
	<div class="minicart">
    	<div class="total_products"><span class="cart_num"><span class="crt-text">Now in your cart</span><a href="/virtuemart_46736/index.php/online-store/cart">0 items</a></span></div>
		<div class="total">
					</div>
	</div>
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
						<a class="vmicon vmicon vm2-remove_from_cart" onclick="remove_product_cart(this);"><span class="product_cart_id" style="display:none;"></span></a>
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
<script type="text/javascript">
jQuery('.marg-bot.sp .fleft .vmicon').live('mouseover',function(){
		jQuery(this).parent().parent().parent().find('.spinner').css({display:'block'});						  
	})

jQuery(document).ready(function() {
	jQuery('#vmCartModule').hover(
	   function(){
	   jQuery('#cart_list').stop(true,true).slideDown(400) 
	   },
	   function(){ 
	   jQuery('#cart_list').stop(true,true).delay(500).slideUp(100)
	   }
	)
});
function remove_product_cart(elm) {
	var cart_id = jQuery(elm).children("span.product_cart_id").text();
	new Request.HTML({
		'url':'index.php?option=com_virtuemart&view=cart&task=delete',
		'method':'post',
		'data':'cart_virtuemart_product_id='+cart_id,
		'onSuccess':function(tree,elms,html,js) {
			//jQuery(".vmCartModule").productUpdate();
			mod=jQuery(".vmCartModule");
			jQuery.getJSON(vmSiteurl+"index.php?option=com_virtuemart&nosef=1&view=cart&task=viewJS&format=json"+vmLang,
				function(datas, textStatus) {
					if (datas.totalProduct >0) {
						mod.find(".vm_cart_products").html("");
						datas.products.reverse();
						jQuery.each(datas.products, function(key, val) {
						 	if (key<4){	
								jQuery("#hiddencontainer .container").clone().appendTo(".vmCartModule .vm_cart_products");
								jQuery.each(val, function(key, val) {
									if (jQuery("#hiddencontainer .container ."+key)) mod.find(".vm_cart_products ."+key+":last").html(val) ;
							});
							}	
						});
						mod.find(".total").html(datas.billTotal);
						mod.find(".show_cart").html(datas.cart_show);
					} else {
						mod.find(".text-cart").html(datas.cart_empty_text);
						mod.find(".vm_cart_products").html("");
						mod.find(".total").html("");
						mod.find(".show_cart").html("");
					}
					mod.find(".total_products").html(datas.totalProductTxt);
				}
			);
		}
	}).send();
}
</script></div></div>
<div class="currency">
<div class="moduletable">
<h3>Currency:</h3>
<!-- Currency Selector Module -->
<form id="select-form" class="xxx jqtransformdone" action="https://livedemo00.template-help.com/virtuemart_46736/" method="post" style="display: block;">
<div class="jqTransformSelectWrapper" style="z-index: 10; width: 88px;">
<div><span style="width: 0px;">US dollar $</span><a href="#" class="jqTransformSelectOpen"></a></div>
<ul style="width: 86px; display: none; visibility: visible;">
<li><a href="#" index="0">Euro €</a></li>
<li><a href="#" index="1" class="selected">US dollar $</a></li></ul>
<select id="virtuemart_currency_id" name="virtuemart_currency_id" class="inputbox jqTransformHidden" style="">
<option value="47">Euro €</option>
<option value="144" selected="selected">US dollar $</option>
</select></div>
<button id="" name="submit" type="submit" class="button jqTransformButton jqTransformButton_click"><span><span>Change</span></span></button>
</form>
<script type="text/javascript">
jQuery(document).ready(function() {
	jQuery(function(){
		 jQuery('#select-form').jqTransform({imgPath:'/virtuemart_46736/templates/theme421/images/'}).css('display','block');
	});
		
});
</script></div></div>
<div id="search">
<div class="moduletable_ajax_search">
<div style="position: relative;">
<form name="pp_search135" id="pp_search2.135" action="/virtuemart_46736/index.php" method="get">
<div class="vmlpsearch_ajax_search" style="min-height: 47px;">
<div id="results_re_2135">
<a style="display:none;" href="/virtuemart_46736/" title="" onclick="javascript: return false;"></a>
</div>
	<div class="vm_ajax_search_pretext"></div>

<div class="aj_label_wrapper" style="position: relative; height: 20px; clear: both;">
<input style="width: 140px; position: relative; top: 0; left: 0;" class="inputbox" id="vm_ajax_search_search_str2135" name="keyword" type="text" value="" autocomplete="off" onblur="javascript: return search_setText('', this, '135');" onfocus="javascript: aj_inputclear(this, '5', 'en', '135', 'https://livedemo00.template-help.com/virtuemart_46736/modules/mod_vm_ajax_search/ajax/index.php');" onkeyup="javascript:search_vm_ajax_live(this, '5', 'en', '135', 'https://livedemo00.template-help.com/virtuemart_46736/modules/mod_vm_ajax_search/ajax/index.php'); ">
<input type="hidden" id="saved_vm_ajax_search_search_str2135" value="search">
<label for="vm_ajax_search_search_str2135" id="label_vm_ajax_search_search_str2135" class="label_vm_ajax" style="position: absolute;">
search in shop</label>
<input type="hidden" name="option" value="com_virtuemart">
<input type="hidden" name="page" value="shop.browse">
<input type="hidden" name="search" value="true">
<input type="hidden" name="view" value="category">
<input type="hidden" name="limitstart" value="0">
<input class="button" type="submit" value="search" name="Search" style="display: block; "></div>
</div>
</form>
</div></div></div>
<div class="moduletable_LoginForm">
					<!-- https://www.Youjoomla.com YJ Pop Login for Joomla 1.6 starts here -->
<script type="text/javascript" src="https://livedemo00.template-help.com/virtuemart_46736/modules/mod_yj_pop_login/src/yj_login_pop.js"></script>
<!-- registration and login -->
<div class="poping_links"> <span> Please login or register</span>		<a href="/virtuemart_46736/index.php/online-store/user-edit-address/editaddress" id="openReg">Create an account</a>
		<a href="javascript:;" onclick="showThem('login_pop');return false;" id="openLogin">Log in</a>
</div>
<!-- login -->
<div id="login_pop" style="display:none;">
		<form action="/virtuemart_46736/index.php" method="post" name="login" id="form-login">
		<span><label for="yjpop_username">Username</label></span>
		<input id="yjpop_username" type="text" name="username" class="inputbox" alt="username" size="18">
		<span><label for="yjpop_passwd">Password</label></span>
		<input id="yjpop_passwd" type="password" name="password" class="inputbox" size="18" alt="password">
				<div class="wrapper">
		<label for="yjpop_remember">Remember me</label>
		<input id="yjpop_remember" type="checkbox" name="remember" class="inputbox" value="yes" alt="Remember Me">
		</div>
				<input type="submit" name="Submit" class="button" value="Log in">
				<input type="hidden" name="option" value="com_users">
		<input type="hidden" name="task" value="user.login">
		<input type="hidden" name="return" value="aW5kZXgucGhwP0l0ZW1pZD00MzU=">
		<input type="hidden" name="c6db50f644cf2fece5f6980e92172e7e" value="1">	</form>
	<ul class="Forgot">
		<li><a href="/virtuemart_46736/index.php/component/users/?view=reset">Forgot Your Password?</a></li>
		<li><a href="/virtuemart_46736/index.php/component/users/?view=remind">Forgot Your Username?</a></li>
	</ul>
	<a href="javascript:;" onclick="this.blur();showThem('login_pop');return true;" id="closeLogin">&nbsp;</a> </div>
<!-- registration  -->
<div id="reg_pop" style="display:none;">
	<script type="text/javascript" src="https://livedemo00.template-help.com/virtuemart_46736/media/system/js/validate.js"></script>
	<form action="/virtuemart_46736/index.php/component/users/?task=registration.register" method="post" id="josForm" name="josForm" class="form-validate">
		<div class="popyjreg">
			<div class="popyjreg_ins">
				<label id="namemsg" for="name"> *&nbsp;Name: </label>
				<input type="text" name="jform[name]" id="name" size="40" value="" class="inputbox required" maxlength="50" aria-required="true" required="required">
			</div>
			<div class="popyjreg_ins">
				<label id="usernamemsg" for="username"> *&nbsp;Username: </label>
				<input type="text" id="username" name="jform[username]" size="40" value="" class="inputbox required validate-username" maxlength="25" aria-required="true" required="required">
			</div>
			<div class="popyjreg_ins">
				<label id="emailmsg" for="email"> *&nbsp;Email: </label>
				<input type="email" id="email" name="jform[email1]" size="40" value="" class="inputbox required validate-email" maxlength="100" aria-required="true" required="required">
			</div>
			<div class="popyjreg_ins">
				<label id="emailmsg2" for="email2"> *&nbsp;Verify Email: </label>
				<input type="email" id="email2" name="jform[email2]" size="40" value="" class="inputbox required validate-email" maxlength="100" aria-required="true" required="required">
			</div>
			<div class="popyjreg_ins">
				<label id="pwmsg" for="password"> *&nbsp;Password: </label>
				<input class="inputbox required validate-password" type="password" id="password" name="jform[password1]" size="40" value="" aria-required="true" required="required">
			</div>
			<div class="popyjreg_ins">
				<label id="pw2msg" for="password2"> *&nbsp;Confirm password: </label>
				<input class="inputbox required validate-passverify" type="password" id="password2" name="jform[password2]" size="40" value="" aria-required="true" required="required">
			</div>
		</div>
		<p class="information_td">Fields marked with an asterisk (*) are required.</p>
		<button class="button validate" type="submit">Create an Account</button>
		<input type="hidden" name="option" value="com_users">
		<input type="hidden" name="task" value="registration.register">
		<input type="hidden" name="c6db50f644cf2fece5f6980e92172e7e" value="1">	</form>
	<a href="javascript:;" onclick="this.blur();showThem('reg_pop');return true;" id="closeReg">&nbsp;</a> </div>
<!-- end registration and login -->
		</div>
			</div>
			</div>
</head>