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
 
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
 <c:set var="lang" scope="request" value="${requestScope.locale.language}"/> 
 
 <!DOCTYPE html>
<html lang="en">
<tiles:insertAttribute name="header" ignore="true"/>

<body>
<tiles:insertAttribute name="navbar" ignore="true"/>
    <!-- Page Content -->
			    <!-- START-->
<link rel="stylesheet" href="http://localhost:8080/static/files/DEFAULT/owl.carousel.min.css">
<link rel="stylesheet" href="http://localhost:8080/static/files/DEFAULT/owl.theme.default.min.css">
<link href="resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="http://localhost:8080/static/files/DEFAULT/custom.css">
<script type="text/html" id="sliderBoxTemplate">
{{#products}}
{{/products}}
</script>
<br/>
<script>
$(document).ready(function() {

				//get products
				loadSliderProducts();
          })
 function loadSliderProducts() {
		  	$.ajax({
				type: 'GET',
				dataType: "json",
				url: 'http://localhost:8080/services/public/DEFAULT/products/group/custom',
				success: function(productList) {

					//set in slider
					var productsTemplate = Hogan.compile(document.getElementById("sliderBoxTemplate").innerHTML);
					var productsRendred = productsTemplate.render(productList);
					//productsRendred=productsRendred.replace(/<div class="carousel-item ">/g, ' <div class="carousel-item active">');
					$('#sliderContainer').append(productsRendred);
				//	loadSlider();

				},
				error: function(jqXHR,textStatus,errorThrown) { 
					$(divProductsContainer).hideLoading();
					alert('Error ' + jqXHR + "-" + textStatus + "-" + errorThrown);
				}
			});
		  }
          </script>
<jsp:include page="/pages/shop/templates/exoticamobilia1/sections/jsLinks.jsp" />
<tiles:insertAttribute name="footer" ignore="true"/>
</body>
<!DOCTYPE html>
<head>
</head>
<html lang="en">
<div class="box-slider">
<div class="main">
<div class="moduletable_banner_1">
<div class="bannergroup_banner_1">
<div class="banneritem">
<a href="#" target="_blank" title="Shop 1">
<img src="resources/img/banner4.jpg" alt="Shop 1" width="770" height="447"></a>
<div class="clr"></div></div>
<div class="banneritem">
<a href="#" target="_blank" title="Shop 2">
<img src="resources/img/banner5.jpg" alt="Shop 2" width="370" height="447">
</a>
<div class="clr"></div></div>
<div class="banneritem">
<a href="#" target="_blank" title="Shop 3">
<img src="resources/img/banner6.jpg" alt="Shop 3" width="370" height="210">
</a>
<div class="clr"></div></div>
<div class="banneritem">
<a href="#" target="_blank" title="Shop 4">
<img src="resources/img/banner7.jpg" alt="Shop 4" width="370" height="210">
</a>
<div class="clr"></div>
</div>
<div class="banneritem">
<a href="#" target="_blank" title="Shop 5">
<img src="resources/img/banner8.jpg" alt="Shop 5" width="370" height="210">
</a>
<div class="clr"></div></div></div></div>
<div class="clear"></div></div></div>
    
<div id="content">
<div class="content-box">
<div class="main">
<div class="wrapper2">
<div id="left">
<div class="wrapper2">
<div class="extra-indent">
<div class="module-categories">
<h3><span><span>Categories</span></span></h3>
<div class="boxIndent">
<div class="wrapper">
<ul class="VMmenu level0 list" id="accordion">
<li id="vm-category-1" class="level0 VmClose">
<a href="#">Asian Food</a>			</li>
<li id="vm-category-2" class="level0 VmClose">
<a href="#">Pocky, Snacks, &amp; Candy</a></li>
<li id="vm-category-3" class="level0 has-children VmClose">
<a href="#">Japanese &amp; Chinese Rice</a><span class="VmArrowdown idCatSubcat close"></span>
<ul class="menu level1" style="display: none;">
<li id="vm-category-13" class="category-13 VmClose">
<a href="#">Ut congue turpis</a></li>
<li id="vm-category-14" class="category-14 VmClose">
<a href="#">Vivamus bibendum erat</a></li></ul></li>
<li id="vm-category-4" class="level0 VmClose">
<a href="#">Miso Paste &amp; Soup</a></li>
<li id="vm-category-5" class="level0 VmClose">
<a href="#">Asian Noodles</a></li>
<li id="vm-category-6" class="level0 VmClose">
<a href="#">Japanese Seasonings</a></li>
<li id="vm-category-7" class="level0 VmClose">
<a href="#">Quick &amp; Easy Asian Cooking</a></li>
<li id="vm-category-8" class="level0 VmClose">
<a href="#">Asian Beverages</a></li>
<li id="vm-category-9" class="level0 VmClose">
<a href="#">Sake &amp; Asian Beer</a></li>
<li id="vm-category-10" class="level0 VmClose">
<a href="#">Chopsticks &amp; Kitchenware</a></li>
<li id="vm-category-11" class="level0 VmClose">
<a href="#">Japanese Toys &amp; Stationery</a></li>
<li id="vm-category-12" class="level0 VmClose">
<a href="#">Home and Beauty</a></li>
</ul></div></div></div>
<div class="module_best">
<h3><span><span>Bestsellers</span></span></h3>
<div class="boxIndent">
<div class="wrapper">
<div class="vmgroup_best">
<ul id="vmproduct" class="vmproduct_best">
 <li class="item1">
 <div class="product-box spacer ">
 <div class="fleft">
<div class="Title">
<span class="count">1.</span>
<a href="#" title="Ipsum dolor sit amet conse ctetur">Ipsum dolor sit amet conse ctetur</a></div>
<div class="clear"></div></div></div></li>

<li class="items1"> 
 <div class="product-box spacer ">
 <div class="fleft">
<div class="Title">
<span class="count">2.</span>
<a href="#" title="Ipsum dolor sit amet conse ctetur">Ipsum dolor sit amet conse ctetur</a></div>
<div class="clear"></div></div></div></li>

<li class="items1"> 
 <div class="product-box spacer disc">
 <div class="fleft">
<div class="Title">
<span class="count">3.</span>
<a href="#" title="Lorem ipsum dolor sit amet, consect etuer">Lorem ipsum dolor sit amet, consect...</a></div>
<div class="clear"></div></div></div></li>

<li class="items"> 
 <div class="product-box spacer ">
<div class="fleft">
<div class="Title">
<span class="count">4.</span>
<a href="#" title="Lorem ipsum dolor sit amet conse ctetur adipisicing">Lorem ipsum dolor sit amet conse ctetur...</a></div>
<div class="clear"></div></div></div></li>

<li class="items"> 
 <div class="product-box spacer ">
 <div class="fleft">
<div class="Title">
<span class="count">5.</span>
<a href="#" title="Lorem ipsum dolor sit amet, consect etuer">Lorem ipsum dolor sit amet, consect...</a></div>
<div class="clear"></div></div></div></li>

<li class="items"> 
 <div class="product-box spacer ">
 <div class="fleft">
<div class="Title">
<span class="count">6.</span><a href="#" title="Dolor sit amet">Dolor sit amet</a>		</div>
<div class="clear"></div></div></div></li>

<li class="items"> 
 <div class="product-box spacer ">
<div class="fleft">
<div class="Title">
<span class="count">7.</span>
<a href="#" title="Ipsum dolor sit amet conse ctetur">Ipsum dolor sit amet conse ctetur</a></div>
<div class="clear"></div></div></div></li></ul>
</div></div></div></div></div></div></div>
<div class="container">
<div class="error err-space">
<div id="system-message-container"></div></div>
<div class="module_new feat">
<h3><span><span>Featured Products</span></span></h3>
<div class="boxIndent">
<div class="wrapper2">
<div class="vmgroup_new feat">
<ul id="vmproduct" class="vmproduct_new feat">
 <li class="item">
 <div class="product-box spacer ">
 <div class="browseImage">
<div class="new"></div>
<a href="#" class="img2"><img src="resources/img/product01_resized.png" alt="product01" class="browseProductImage featuredProductImage" border="0"></a></div>
<div class="fleft">
<div class="Title">
<span class="count">1.</span>
<a href="#" title="Lum mleie kertase miase lacnean">Lum mleie kertase miase lacnean</a></div>
<div class="description">
<p>Sed sapien sapien, vulputate ac varius vitae, rutrum...</p></div>
<div class="Price">
<span class="sales">$121.00</span><span class="WithoutTax">$121.00</span></div>
<div class="addtocart-area">
<form method="post" class="product js-recalculate" action="index.php" id="addtocartproduct1">
<input name="quantity" type="hidden" value="1">
<div class="addtocart-bar2">
<script type="text/javascript">
function check(obj) {
// use the modulus operator '%' to see if there is a remainder
remainder=obj.value % 1;
quantity=obj.value;
if (remainder  != 0) {
alert('You can buy this product only in multiples of 1 pieces!!');
obj.value = quantity-remainder;
return false;
}
return true;
}</script> 
<div class="not_notyfi">
<span class="quantity-box">
<input type="text" class="quantity-input js-recalculate" name="quantity[]" onblur="check(this);" value="1"></span>
<span class="quantity-controls">
<input type="button" class="quantity-controls quantity-plus">
<input type="button" class="quantity-controls quantity-minus"></span>
<div class="clear"></div>
<span class="addtocart-button"><i>&gt;</i>
<input type="submit" name="" class="addtocart-button cart-click" value="Add to Cart" title="Add to Cart"></span>
<div class="clear"></div></div></div>
<input type="hidden" class="pname" value="Lum mleie kertase miase lacnean">
<input type="hidden" name="option" value="com_virtuemart">
<input type="hidden" name="view" value="cart">
<noscript>&lt;input type="hidden" name="task" value="add" /&gt;</noscript>
<input type="hidden" name="virtuemart_product_id[]" value="1">
<input type="hidden" name="virtuemart_category_id[]" value="1"></form></div>
<div class="clear"></div></div></div>
 <div class="product-box spacer disc">
 <div class="browseImage">
<div class="new"></div>
<a href="#" class="img2"><img src="resources/img/product03_resized.png" alt="product03" class="browseProductImage featuredProductImage" border="0"></a>		</div>
<div class="fleft">
<div class="Title">
<span class="count">2.</span>
<a href="#" title="Ut us dolor apibusgetele mentumvel">Ut us dolor apibusgetele mentumvel</a>		</div>
<div class="description">
<p>Sed in dui et mauris ullamcorper sagittis. Morbi...</p></div>
<div class="Price">
<span class="sales">$105.00</span><span class="WithoutTax">$133.10</span>
<span class="discount">$-28.10</span></div>
<div class="addtocart-area">
<form method="post" class="product js-recalculate" action="index.php" id="addtocartproduct3">
<input name="quantity" type="hidden" value="1">
<div class="addtocart-bar2">
<script type="text/javascript">
function check(obj) {
// use the modulus operator '%' to see if there is a remainder
remainder=obj.value % 1;
quantity=obj.value;
if (remainder  != 0) {
alert('You can buy this product only in multiples of 1 pieces!!');
obj.value = quantity-remainder;
return false;
}
return true;
}
</script>
<div class="not_notyfi">
<span class="attributes"><b>*</b> Product has attributes</span>
<span class="addtocart-button"><i>&gt;</i>
<a href="#" title="Ut us dolor apibusgetele mentumvel" class="addtocart-button attribut">Add to Cart</a></span></div></div>
<input type="hidden" class="pname" value="Ut us dolor apibusgetele mentumvel">
<input type="hidden" name="option" value="com_virtuemart">
<input type="hidden" name="view" value="cart">
<noscript>&lt;input type="hidden" name="task" value="add" /&gt;</noscript>
<input type="hidden" name="virtuemart_product_id[]" value="3">
<input type="hidden" name="virtuemart_category_id[]" value="1"></form></div>
<div class="clear"></div></div></div>
 <div class="product-box spacer ">
 <div class="browseImage">
<div class="new"></div>
<a href="#" class="img2"><img src="resources/img/product04_resized.png" alt="product04" class="browseProductImage featuredProductImage" border="0"></a></div>
<div class="fleft">								
<div class="Title">
<span class="count">3.</span><a href="#" title="Lorem ipsum dolor sit amet conse ctetur adipisicing">Lorem ipsum dolor sit amet conse ctetur...</a>		</div>
<div class="description">
<p>Proin fermentum ultrices venenatis. Praesent molestie...				</p></div>
<div class="Price">
<span class="sales">$157.30</span><span class="WithoutTax">$157.30</span></div>
<div class="addtocart-area">
<form method="post" class="product js-recalculate" action="index.php" id="addtocartproduct4">
<input name="quantity" type="hidden" value="1">
<div class="addtocart-bar2">
<script type="text/javascript">
function check(obj) {
// use the modulus operator '%' to see if there is a remainder
remainder=obj.value % 1;
quantity=obj.value;
if (remainder  != 0) {
alert('You can buy this product only in multiples of 1 pieces!!');
obj.value = quantity-remainder;
return false;
}
return true;
}</script>							
<div class="not_notyfi">
<span class="attributes"><b>*</b> Product has attributes</span>
<span class="addtocart-button"><i>&gt;</i>
<a href="#" title="Lorem ipsum dolor sit amet conse ctetur adipisicing" class="addtocart-button attribut">Add to Cart</a></span></div></div>
<input type="hidden" class="pname" value="Lorem ipsum dolor sit amet conse ctetur adipisicing">
<input type="hidden" name="option" value="com_virtuemart">
<input type="hidden" name="view" value="cart">
<noscript>&lt;input type="hidden" name="task" value="add" /&gt;</noscript>
<input type="hidden" name="virtuemart_product_id[]" value="4">
<input type="hidden" name="virtuemart_category_id[]" value="1"></form></div>
<div class="clear"></div></div></div></li>
<li class="items"> 
 <div class="product-box spacer disc">
 <div class="browseImage">
<div class="new"></div>
<a href="#" class="img2"><img src="resources/img/product02_resized.png" alt="product02" class="browseProductImage featuredProductImage" border="0"></a>		</div>				
<div class="fleft">									
<div class="Title">
<span class="count">4.</span>
<a href="#" title="Lorem ipsum dolor sit amet, consect etuer">Lorem ipsum dolor sit amet, consect...</a></div>
<div class="description">
<p>Ut vitae neque vel lacus volutpat pulvinar. Cras quis...</p></div>       		
<div class="Price">		
<span class="sales">$95.00</span><span class="WithoutTax">$145.20</span><span class="discount">$-50.20</span></div>
<div class="addtocart-area">
<form method="post" class="product js-recalculate" action="index.php" id="addtocartproduct2">
<input name="quantity" type="hidden" value="1">
<div class="addtocart-bar2">
<script type="text/javascript">
function check(obj) {
// use the modulus operator '%' to see if there is a remainder
remainder=obj.value % 1;
quantity=obj.value;
if (remainder  != 0) {
alert('You can buy this product only in multiples of 1 pieces!!');
obj.value = quantity-remainder;
return false;
}
return true;
}</script> 
<div class="not_notyfi">
<span class="attributes"><b>*</b> Product has attributes</span>
<span class="addtocart-button"><i>&gt;</i>
<a href="#" title="Lorem ipsum dolor sit amet, consect etuer" class="addtocart-button attribut">Add to Cart</a></span></div></div>
<input type="hidden" class="pname" value="Lorem ipsum dolor sit amet, consect etuer">
<input type="hidden" name="option" value="com_virtuemart">
<input type="hidden" name="view" value="cart">
<noscript>&lt;input type="hidden" name="task" value="add" /&gt;</noscript>
<input type="hidden" name="virtuemart_product_id[]" value="2">
<input type="hidden" name="virtuemart_category_id[]" value="1"></form></div>
<div class="clear"></div></div></div>
 <div class="product-box spacer ">
 <div class="browseImage">
<div class="new"></div>
<a href="#" class="img2"><img src="resources/img/product05_resized.png" alt="product05" class="browseProductImage featuredProductImage" border="0"></a></div>
<div class="fleft">
<div class="Title">
<span class="count">5.</span><a href="#" title="Ipsum dolor sit amet conse ctetur">Ipsum dolor sit amet conse ctetur</a></div>
<div class="description">
<p>Sed sapien sapien, vulputate ac varius vitae, rutrum...</p></div>
<div class="Price">
<span class="sales">$108.90</span><span class="WithoutTax">$108.90</span></div>
<div class="addtocart-area">
<form method="post" class="product js-recalculate" action="index.php" id="addtocartproduct5">
<input name="quantity" type="hidden" value="1">
<div class="addtocart-bar2">
<script type="text/javascript">
function check(obj) {
// use the modulus operator '%' to see if there is a remainder
remainder=obj.value % 1;
quantity=obj.value;
if (remainder  != 0) {
alert('You can buy this product only in multiples of 1 pieces!!');
obj.value = quantity-remainder;
return false;
}
return true;
}</script> 								
<div class="not_notyfi">
<span class="attributes"><b>*</b> Product has attributes</span>
<span class="addtocart-button"><i>&gt;</i>
<a href="#" title="Ipsum dolor sit amet conse ctetur" class="addtocart-button attribut">Add to Cart</a></span></div></div>
<input type="hidden" class="pname" value="Ipsum dolor sit amet conse ctetur">
<input type="hidden" name="option" value="com_virtuemart">
<input type="hidden" name="view" value="cart">
<noscript>&lt;input type="hidden" name="task" value="add" /&gt;</noscript>
<input type="hidden" name="virtuemart_product_id[]" value="5">
<input type="hidden" name="virtuemart_category_id[]" value="1"></form></div>
<div class="clear"></div></div></div>
 <div class="product-box spacer ">
<div class="browseImage">
<div class="new"></div>
<a href="#" class="img2"><img src="resources/img/product06_resized.png" alt="product06" class="browseProductImage featuredProductImage" border="0"></a>		</div>
<div class="fleft">
<div class="Title">
<span class="count">6.</span><a href="/virtuemart_46736/index.php/online-store/asian%20food/product-6-detail" title="Dolor sit amet">Dolor sit amet</a></div>
<div class="description">
<p>Ut vitae neque vel lacus volutpat pulvinar. Cras quis...</p></div>		
<div class="Price">	
<span class="sales">$121.00</span><span class="WithoutTax">$121.00</span></div>
<div class="addtocart-area">
<form method="post" class="product js-recalculate" action="index.php" id="addtocartproduct6">
<input name="quantity" type="hidden" value="1">
<div class="addtocart-bar2">
<script type="text/javascript">
function check(obj) {
// use the modulus operator '%' to see if there is a remainder
remainder=obj.value % 1;
quantity=obj.value;
if (remainder  != 0) {
alert('You can buy this product only in multiples of 1 pieces!!');
obj.value = quantity-remainder;
return false;
}
return true;
}</script> 									
<div class="not_notyfi">
<span class="quantity-box">
<input type="text" class="quantity-input js-recalculate" name="quantity[]" onblur="check(this);" value="1"></span>
<span class="quantity-controls">
<input type="button" class="quantity-controls quantity-plus">
<input type="button" class="quantity-controls quantity-minus"></span>
<div class="clear"></div>
<span class="addtocart-button"><i>&gt;</i>
<input type="submit" name="" class="addtocart-button cart-click" value="Add to Cart" title="Add to Cart"></span>
<div class="clear"></div></div></div>
<input type="hidden" class="pname" value="Dolor sit amet">
<input type="hidden" name="option" value="com_virtuemart">
<input type="hidden" name="view" value="cart">
<noscript>&lt;input type="hidden" name="task" value="add" /&gt;</noscript>
<input type="hidden" name="virtuemart_product_id[]" value="6">
<input type="hidden" name="virtuemart_category_id[]" value="1">
</form></div>
<div class="clear"></div>
</div></div></li></ul></div></div></div></div></div>
<div class="clear"></div></div>
<div class="module_banner_2">
<div class="boxIndent">
<div class="wrapper2"><div class="bannergroup_banner_2">
</div></div></div></div></div>
<div class="clear"></div></div></div>




</html>
    
<script>
  window.onscroll = changePos;

function changePos() {
    
    
    if (window.pageYOffset > 210) {
       $("#header").addClass( "fixed-top" );  
    } else {
    $("#header").removeClass( "fixed-top" );
       
    }
}
  </script>
     <!-- Footer -->
<div id="foot">
<div class="main">
<p id="back-top">
<a href="#top"><span></span></a></p>
<div class="space">
<div class="wrapper">
<div class="footerText">
<div class="footer1">Copyright © 2017 Asian Grocery. All Rights Reserved.</div>
<div class="footer2"><a href="https://www.joomla.org">Joomla!</a> is Free Software released under the <a href="https://www.gnu.org/licenses/gpl-2.0.html">GNU.</a></div>
<!--{%FOOTER_LINK} -->
</div></div></div></div></div>
</html>
 
