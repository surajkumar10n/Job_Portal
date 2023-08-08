<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#">Job-Portal</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<c:if test="${userobj.role eq 'admin' }">
				<li class="nav-item"><a class="nav-link" href="add_job.jsp"><i
						class="fa-solid fa-plus"></i> Post job</a></li>
				<li class="nav-item"><a class="nav-link" href="view_job.jsp"><i
						class="fa-solid fa-eye"></i> view job</a></li>
			</c:if>

		</ul>
		<form class="form-inline my-2 my-lg-0">
			<c:if test="${userobj.role eq 'admin' }">
				<a href="#" class="btn btn-Light mr-1"><i
					class="fa-solid fa-right-to-bracket"></i>Admin</a>
					
					<a href="logout" class="btn btn-Light"><i
					class="fa-sharp fa-solid fa-user"></i>Logout</a>
					</c:if>
					
					<c:if test="${userobj.role eq 'user' }">
				<a href="#" class="btn btn-Light mr-1"><i
					class="fa-solid fa-right-to-bracket"></i>${userobj.name}</a>
					
					<a href="logout" class="btn btn-Light"><i
					class="fa-sharp fa-solid fa-user"></i>Logout</a>
					</c:if>
					
				
			
			<c:if test="${empty userobj }">
				<a href="login.jsp" class="btn btn-Light mr-1"><i
					class="fa-solid fa-right-to-bracket"></i>Login</a>
				<a href="signup.jsp" class="btn btn-Light"><i
					class="fa-sharp fa-solid fa-user"></i>Signup</a>
			</c:if>

		</form>
	</div>
</nav>