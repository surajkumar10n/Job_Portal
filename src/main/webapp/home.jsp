<%@page import="java.util.List"%>
<%@page import="com.dao.jobDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Jobs"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User :Home</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body style="background-color:#f0f1f2;">

	<%@include file="all_components/navbar.jsp"%>
	<div class="container">
		<div class="col-md-12">
			<h5 class="text-center text-primary">All Jobs</h5>
			<div class="card">
				<%--<div class="card-body">
					<form class="form-inline" action="more_view.jsp" method="get">
						<div class="form-group col-md-5 mt-1">
							<h5>Location</h5>
						</div>
						<div class="form-group col-md-4 mt-1">
							<h5>Category</h5>
						</div>
						<div class="form-group col-md-5">
							<select name="Loc" class="custom-select"
								id="inlineFormCustomSelectPref">
								<option selected value="Lo">Choose...</option>
								<option value="Odisha">Odisha</option>
								<option value="Jharkhand">Jharkhand</option>
								<option value="Gujrat">Gujrat</option>
								<option value="Delhi">Delhi</option>
								<option value="Ranchi">Ranchi</option>
							</select>
						</div>
						<div class="form-group col-md-5">
							<select class="custom-select" id="inlineFormCustomSelectPref"
								name="cat">
								<option value="ca" selected>choose..</option>
								<option value="IT">It</option>
								<option value="Developer">Developer</option>
								<option value="Banking">Banking</option>
								<option value="Teacher">Teacher</option>
							</select>
						</div>
						<button class="btn btn-success">Submit</button>
					</form>--%>
				</div>
			</div>
			<%
								jobDAO dao=new jobDAO(DBConnect.getConn());
								List <Jobs>list=dao.getAllJobsForUser();
								for(Jobs j:list){
								%>
			<div class="card mt-2">
				<div class="card-body">
					<div class="text-center text-primary">
						<i class="far fa-clipboard fa-2x"></i>
					</div>
					<h6><%=j.getTitle() %></h6>
					<% 
					if(j.getDescription().length()>0 && j.getDescription().length()<120){
						%>
					<p><%=j.getDescription() %>.
					</p>
					<%
					} else{%>
					<p><%=j.getDescription().substring(0,120) %>...
					</p>
					<%
					}
					%>
					<br>
					<div class="form-row">
					<div class="form-group col-md-3">
					<input type="text" class="form-control form-control-sm" value="Location: <%=j.getLocation() %>" readonly>
					</div>
					<div class="form-group col-md-3">
					<input type="text" class="form-control form-control-sm" value="Category:<%=j.getCategory() %>"readonly>
					</div>
					</div>
					<h6>Publish Date:<%=j.getPdate().toString() %></h6>
					<%-- <div class="text-center">
					<a href="one_view.jsp?id=<%=j.getId() %>" class="btn btn-sm bg-success text-white">View More</a>
					</div> --%>
					</div>
					</div>
					<%
					}
					%>
					</div>
					</div>
					
					
					
				
</body>
</html>