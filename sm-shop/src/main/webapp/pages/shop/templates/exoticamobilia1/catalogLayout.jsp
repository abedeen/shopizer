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
<html lang="en" ng-app="ui.bootstrap.demo" >
<tiles:insertAttribute name="header" ignore="true"/>

<body class="bg">

  <tiles:insertAttribute name="navbar" ignore="true"/>

    <!-- Page Content -->
    <div>
			    <!-- START-->
<link rel="stylesheet" href="http://localhost:8080/resources/exoticamobilia1/js/owl.carousel.min.css">
<link rel="stylesheet" href="http://localhost:8080/resources/exoticamobilia1/js/owl.theme.default.min.css">
<script type="text/html" id="sliderBoxTemplate">
{{#products}}
    <div class="carousel-item ">
                            <img class="d-block img-fluid1"  class="height:320px" src="http://localhost:8080/{{image.imageUrl}}">
                        </div>

{{/products}}
</script>

<div class="showcase-row">
                  <div class="container">
                    <div class="showcase">
                        	<div class="moduletable   mod_bannersblock">				
		<div class="module_content">
						<div class="banner_block ">
	<ul class="listing__banners">		
						<li class="item banner item-1 wow fadeInLeft animated" style="width: 370px; visibility: visible; animation-name: fadeInLeft;">
					<a href="/virtuemart_51919/index.php/catalog/asian-food/product-1-detail" target="_self" title="">
					<div class="banner_img">
						<img src="/resources/img/banner1.jpg">
					</div>
					<span class="caption"><div class="txt1"><span>Asian</span> 
Noodles</div>
<div class="txt2">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempo.</div>
<div class="txt3">Shop now!</div></span>
					</a>
				</li>
						<li class="item banner item-2 wow fadeInUp animated" style="width: 370px; visibility: visible; animation-name: fadeInUp;">
					<a href="/virtuemart_51919/index.php/catalog/asian-food/product-2-detail" target="_self" title="">
					<div class="banner_img">
						<img src="/resources/img/banner2.jpg">
					</div>
					<span class="caption"><div class="txt1"><span>Asian</span> 
RICE</div>
<div class="txt2">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempo.</div>
<div class="txt3">Shop now!</div></span>
					</a>
				</li>
						<li class="item banner item-3 wow fadeInRight animated" style="width: 370px; visibility: visible; animation-name: fadeInRight;">
					<a href="/virtuemart_51919/index.php/catalog/asian-food/product-3-detail" target="_self" title="">
					<div class="banner_img">
						<img src="/resources/img/banner3.jpg">
					</div>
					<span class="caption"><div class="txt1"><span>Miso Paste</span> 
&amp; Soup</div>
<div class="txt2">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempo.</div>
<div class="txt3">Shop now!</div></span>
					</a>
				</li>
			</ul>
</div>
		</div>
	</div>
                    </div>
                  </div>
                </div>
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
		   
        <div class="main-row">
<div class="container">
            <!--  div class="col-lg-9">

                <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel"  class="height:320px" >
                    <ol class="carousel-indicators"  class="height:320px" >
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox" id="sliderContainer"  class="height:320px" >
                        <div class="carousel-item active">
                            <img class="d-block img-fluid1" src="http://placehold.it/900x350" alt="First slide">
                        </div>
                       
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                </div-->
                <div class="row">
            <div class="col-lg-3 New">

                <h3 class="module_title">Shop Name</h3>
                <div class="list-group">
                
				 </div>
				  
<div class="dropdown">
<button onclick="myFunction()" class="dropbtn list_categories" style="width: 270px;">CATALOG</button>
  <div id="myDropdown" class="dropdown-content">
     <c:forEach items="${requestScope.TOP_CATEGORIES}" var="category">
                	<c:forEach items="${category.children}" var="child">
																						<a  class="list-group-item" style="width: 278px;" href="<c:url value="/shop/category/${child.description.friendlyUrl}.html"/><sm:breadcrumbParam categoryId="${child.id}"/><c:out value="${child.description.name}"/></a>	
																					</c:forEach>
								
							</c:forEach>
  </div>
</div>

            </div>
            <!-- /.col-lg-3 -->

            <div class="col-lg-9">            
          
                <tiles:insertAttribute name="body" ignore="true"/>
              <!-- /.row -->

            </div>
            <!-- /.col-lg-9 -->

        </div>
        <!-- /.row -->
  
    </div>
    <!-- /.container -->
  </div>
    
<jsp:include page="/pages/shop/templates/exoticamobilia1/sections/jsLinks.jsp" />
<tiles:insertAttribute name="footer" ignore="true"/>

</body>

<script>
  window.onscroll = changePos;

function changePos() {
    
    
    if (window.pageYOffset > 180) {
       $("#header").addClass( "fixed-top" );  
    } else {
    $("#header").removeClass( "fixed-top" );
       
    }
}
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
  </script>
</html>
 