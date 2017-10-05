<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page session="false" %>

		
		<!-- WEB FONTS -->
		<link href="/resources/templates/bootstrap3/css/css.css" rel="stylesheet" type="text/css">
		
		<!-- CORE CSS -->
		<link href="/resources/templates/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="/resources/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!--  Theme -->
		<link href="/resources/templates/bootstrap3/css/theme.css" rel="stylesheet" type="text/css">
		<link href="/resources/templates/bootstrap3/css/orange.css" rel="stylesheet" type="text/css">
		<link href="/resources/templates/bootstrap3/css/shop.css" rel="stylesheet" type="text/css">
		

    
    	<!-- generic and common css file -->
    	<link href="/resources/css/sm.css" rel="stylesheet">
    	<link href="/resources/css/showLoading.css" rel="stylesheet">
    
    	<!-- ////////////// -->

    <!-- mini shopping cart template -->
    <style>
    .container {
    width: 100%!important;
    margin: 0 0 20px;
    padding: 0;
    overflow: hidden;
}
.image {
    border: none;
    text-align: center;
    margin-bottom: 10px;
    padding: 10px;
    background: none;
    -webkit-transition: all 0.1s ease-in;
    transition: all 0.1s ease-in;
}
.image {
    float: left;
    margin-right: 10px;
    width: 40%;
}
.image img {
    width: 100%;
}
.image>img {
    max-width: 100%;
    background: #fff;
}
.fleft {
    overflow: hidden;
}
.product_name a {
    color: #000;
}
.vm2-remove_from_cart {
    border: 0 none;
    cursor: pointer;
    display: inline-block;
    height: 24px;
    vertical-align: bottom;
    width: 24px;
    text-align: center;
    line-height: 26px;
    color: #000!important;
}
.fa {
    display: inline-block;
    font-family: FontAwesome;
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.total {
    font-size: 1.2em;
    color: #000;
    text-align: center;
    margin-bottom: 0px;
}
.total2 {
    padding-bottom: 20px;
}
strong {
    font-weight: bold;
}
.show_cart {
    text-align: center;
}
.show_cart a {
    display: block;
    width: 100%;
}
.btn-default {
    background: #414141;
    color: #fff;
}
.btn {
    border-radius: 0;
    border: none;
    padding: 9px 12px 10px;
    font-size: 20px;
    line-height: 22px;
    color: #fff;
    text-transform: uppercase;
    -webkit-transition: all 0.2s ease-in;
    transition: all 0.2s ease-in;
}</script>
    <script type="text/html" id="miniShoppingCartTemplate">
	.container {
    width: 100%!important;
    margin: 0 0 20px;
    padding: 0;
    overflow: hidden;
}
.image {
    border: none;
    text-align: center;
    margin-bottom: 10px;
    padding: 10px;
    background: none;
    -webkit-transition: all 0.1s ease-in;
    transition: all 0.1s ease-in;
}
.image {
    float: left;
    margin-right: 10px;
    width: 40%;
}
.image img {
    width: 100%;
}
.image>img {
    max-width: 100%;
    background: #fff;
}
.fleft {
    overflow: hidden;
}
.product_name a {
    color: #000;
}
.vm2-remove_from_cart {
    border: 0 none;
    cursor: pointer;
    display: inline-block;
    height: 24px;
    vertical-align: bottom;
    width: 24px;
    text-align: center;
    line-height: 26px;
    color: #000!important;
}
.fa {
    display: inline-block;
    font-family: FontAwesome;
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.total {
    font-size: 1.2em;
    color: #000;
    text-align: center;
    margin-bottom: 0px;
}
.total2 {
    padding-bottom: 20px;
}
strong {
    font-weight: bold;
}
.show_cart {
    text-align: center;
}
.show_cart a {
    display: block;
    width: 100%;
}
.btn-default {
    background: #414141;
    color: #fff;
}
.btn {
    border-radius: 0;
    border: none;
    padding: 9px 12px 10px;
    font-size: 20px;
    line-height: 22px;
    color: #fff;
    text-transform: uppercase;
    -webkit-transition: all 0.2s ease-in;
    transition: all 0.2s ease-in;
}</style>
    <script type="text/html" id="miniShoppingCartTemplate">
		
{{#shoppingCartItems}}
<div class="container">
						<div class="wrapper marg-bot sp">
					<div class="spinner"></div>
					<!-- Image line -->
					<div id="{{productId}}" class="image">
<img  width="40" src="{{contextPath}}{{image}}" style="max-width: 40;">
                    <div class="fleft">
                    <div class="product_row">
						<span class="product_name"><a href="#">details</a></span><div class="clear"></div>
						<span class="quantity">{{quantity}}</span><div class="prices" style="display:inline;">{{price}}</div>
						
						<button productid="{{productId}}" class="close removeProductIcon" onclick="removeItemFromMinicart('{{id}}')">x</button>
					</div>
                                         </div>
					</div>
					</div>
{{/shoppingCartItems}}
	</script>
	<link href="/resources/css/shop-homepage.css" rel="stylesheet">
		
		
		<!--  Theme -->

		<link href="<c:url value="/resources/templates/exoticamobilia/css/template.css" />" rel="stylesheet" type="text/css">
		<link href="<c:url value="/resources/templates/exoticamobilia/font-awesome-4.2.0/css/font-awesome.css" />" rel="stylesheet" type="text/css">
		
		
		<link href="<c:url value="/resources/templates/exoticamobilia/css/dark_gray.css" />" rel="stylesheet" type="text/css">

    
    
    	<!-- ////////////// -->

    <!-- mini shopping cart template -->
    <script type="text/html" id="miniShoppingCartTemplate">
		{{#shoppingCartItems}}
			<tr id="{{productId}}" class="cart-product">
				<td>
			{{#image}}
					<img width="40" src="{{contextPath}}{{image}}">
			{{/image}}
			{{^image}}
					&nbsp
			{{/image}}
				</td>
				<td>{{quantity}}</td>
				<td>{{name}}</td>
				<td>{{price}}</td>
				<td><button productid="{{productId}}" class="close removeProductIcon" onclick="removeItemFromMinicart('{{id}}')">x</button></td>
			</tr>
		{{/shoppingCartItems}}
	</script>
	
	<c:if test="${requestScope.CONFIGS['google_analytics_url'] != null}">	
	<script type="text/javascript">
	//<![CDATA[ 
		  <!-- google analytics -->
	  	   var _gaq = _gaq || [];
	  	   _gaq.push(['_setAccount', '<c:out value="${requestScope.CONFIGS['google_analytics_url']}"/>']);
	  	   _gaq.push(['_trackPageview']);

	  	   (function() {
	    		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	   		 var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  	   })();
	  	//]]> 
	</script>
	</c:if>
	
	