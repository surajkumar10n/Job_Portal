<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_components/all_css.jsp"%>
<style type="text/css">
.back-img{
background:url("img/jobimg2.jpg");
width:100%;
height:83vh;
background-repeat:no-repeat;
background-size:cover;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">
				<i class="fa fa-book" aria-hidden="true"></i>Online job portal

			</h1>

		</div>

	</div>
	<%@include file="all_components/footer.jsp" %>
</body>
</html>