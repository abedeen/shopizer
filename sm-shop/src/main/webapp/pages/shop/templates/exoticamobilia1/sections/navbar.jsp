
<%
response.setCharacterEncoding("UTF-8");
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", -1);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="/WEB-INF/shopizer-tags.tld" prefix="sm"%>
<%@ taglib uri="/WEB-INF/shopizer-functions.tld" prefix="display"%>


<c:set var="req" value="${request}" />

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<style>
@media (min-width: 768px)
.bs-example {
    margin-right: 0;
    margin-left: 0;
    background-color: #fff;
    border-color: #ddd;
    border-width: 1px;
    border-radius: 4px 4px 0 0;
    -webkit-box-shadow: none;
    box-shadow: none;
}

.bs-example {
    position: relative;
    padding: 45px 15px 15px;
    margin: 0 -15px 15px;
    border-color: #e5e5e5 #eee #eee;
    border-style: solid;
    border-width: 1px 0;
    -webkit-box-shadow: inset 0 3px 6px rgba(0,0,0,.05);
    box-shadow: inset 0 3px 6px rgba(0,0,0,.05);
}
</style>
 <!-- Navigation -->
    <nav id="header" class="  navbar-expand-lg navbar-dark  ">
       
        <div class="collapse navbar-collapse heder-navigation" id="navbarResponsive">
            <ul class="  sf-menu">
                <li class="  active" style="padding-left: 57px;">
                    <a class="  "   href="#">HOME <span class="sr-only">(current)</span></a>
                </li>
                <c:set var="code" value="${category.code}"/>
							<c:forEach items="${requestScope.TOP_CATEGORIES}" var="category">							
				
                <li class="  " >
				<a class="nav-link"  data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"href="<c:url value="/shop/category/${category.description.friendlyUrl}.html"/><span class="nav-link">${category.description.name}</span></a>
				<c:if test="${fn:length(category.children)>0}">
													<ul class="dropdown-menu">
															<li>
												
																
																		<c:if test="${requestScope.CONTENT[category.code]!=null}">
																				<c:if test="${requestScope.CONTENT[category.code].description!=null}">
																			<c:out value="${requestScope.CONTENT[category.code].description}" escapeXml="false"/>
																			</c:if>
																		
																		</c:if>

																		
																				
																				<ul class="menu">
																					<c:forEach items="${category.children}" var="child">
																						<li><a href="<c:url value="/shop/category/${child.description.friendlyUrl}.html"/><sm:breadcrumbParam categoryId="${child.id}"/>"><c:out value="${child.description.name}"/></a></li>		
																					</c:forEach>
																				</ul>
																       
															</li>
														</ul>
													
													<!-- mega-menu end -->
													</c:if>
				</li>
																			</c:forEach>               
            </ul>
        </div>
    </nav>