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

<body class="bg">

  <tiles:insertAttribute name="navbar" ignore="true"/>

    <!-- Page Content -->
    <div class="container">
			    <!-- START-->
<link rel="stylesheet" href="http://localhost:8080/static/files/DEFAULT/owl.carousel.min.css">
<link rel="stylesheet" href="http://localhost:8080/static/files/DEFAULT/owl.theme.default.min.css">
<link rel="stylesheet" href="http://localhost:8080/static/files/DEFAULT/custom.css">
<script type="text/html" id="sliderBoxTemplate">
{{#products}}
    <div class="carousel-item ">
                            <img class="d-block img-fluid1"  class="height:320px" src="http://localhost:8080/{{image.imageUrl}}">
                        </div>

{{/products}}
</script>

<h2 class="hTitle">New items</h2>
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
		  <!--- END -->
        <div class="row">

            <div class="col-lg-9">

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
                </div>
                <div class="row">
            <div class="col-lg-3">

                <h1 class="my-4">Shop Name</h1>
                <div class="list-group">
                    <a href="#" class="list-group-item">Category 1</a>
                    <a href="#" class="list-group-item">Category 2</a>
                    <a href="#" class="list-group-item">Category 3<i class="fa  fa-download"></i></a>
                </div>

            </div>
            <!-- /.col-lg-3 -->

            <div class="col-lg-9">
              

                <div class="row">

                 

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title"><a href="#">Item Five</a></h4>
                                <h5>$24.99</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                           <div class="card-body">
                           </div>
                            <div class="card-footer1">
                              <button type="submit" name="addtocart" class="addtocart-button" title="Add to Cart"><img class="btn-img-checkout" src="/resources/img/btn-icon.png"/>&nbsp;ADD TO CART</button>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.col-lg-9 -->

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
    
    <jsp:include page="/pages/shop/templates/exoticamobilia1/sections/jsLinks.jsp" />
<tiles:insertAttribute name="footer" ignore="true"/>

</body>
<style>
.h-100
{
padding:19px;
}
.addtocart-button:hover {
    color: rgb(255, 255, 255);
    background: rgb(65, 65, 65);
}
.addtocart-button {
    width: 100%;
    height:58px;
    background-color:#0A8452;
    font-size: 20px;
    line-height: 22px;
    color: rgb(255, 255, 255);
    text-transform: uppercase;
    border-radius: 0px;
    border-width: initial;
    border-style: none;
    border-color: initial;
    border-image: initial;
    padding: 9px 12px 10px;
    transition: all 0.2s ease-in;
}
.btn-img-checkout{
    margin-top: -3px;
    margin-right: 8px;
    margin-left: -8px;
    }
</style>
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
</html>
 