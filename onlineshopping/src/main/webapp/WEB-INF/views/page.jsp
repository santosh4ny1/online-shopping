<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />



<c:set var="contextRoot" value="${pageContext.request.contextPath }" />



<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shoppping - ${title}</title>

<script type="text/javascript">
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap readable theam CSS -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<%@include file="./shares/navbar.jsp"%>

		<!-- Page Content -->

		<div class"content">
			 <!-- Loading Home Page --> 
			 <c:if test="${userClickHome==true}">
				<%@include file="home.jsp"%>
			</c:if> 
			<!-- Load only when user clicks about --> 
			<c:if test="${userClickAbout==true}">
				<%@include file="about.jsp"%>
			</c:if> 
			<!-- Load only when user clicks contacts --> 
			<c:if
				test="${userClickContact==true}">
				<%@include file="contact.jsp"%>
			</c:if> 
			<!-- Load only when user clicks allProducts --> 
			<c:if
				test="${userClickAllProducts==true or userClickCategoryProducts==true}">
				<%@include file="listProducts.jsp"%>
			</c:if> 
		
	    </div>
	<!-- Footer -->
	
	
	
	<%@include file="./shares/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="vendor/popper/popper.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
	<!-- self coded javascript -->

	<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>