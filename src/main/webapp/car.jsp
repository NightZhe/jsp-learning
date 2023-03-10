<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="./css/main.css">
<script src="./js/main.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<!-- google enter -->
<script src="https://apis.google.com/js/platform.js" async defer></script>

<meta name="google-signin-client_id"
	content="750954315629-9fc9be4sabpcbtkfofe4c0eg3co6bh46.apps.googleusercontent.com">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.m
</head>
<body>
<div class="header">
		<nav class="navbar navbar-expand-lg bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.jsp"><img
					src="./css/img/LAZY.jpeg" alt=""></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.jsp">LAZY HOME</a></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Drink </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">50???</a></li>
								<li><a class="dropdown-item" href="#">?????????</a></li>
								<li><a class="dropdown-item" href="#">?????????</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> ?????? </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">?????????</a></li>
								<li><a class="dropdown-item" href="#">?????????</a></li>
								<li><a class="dropdown-item" href="#">Simple Kaffa</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> ?????? </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">?????????</a></li>
								<li><a class="dropdown-item" href="#">???????????????</a></li>
								<li><a class="dropdown-item" href="#">DA ANTONIO</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> ?????? </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">W hotel</a></li>
								<li><a class="dropdown-item" href="#">????????????</a></li>
								<li><a class="dropdown-item" href="#">?????? </a></li>
							</ul></li>

						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/index.html">?????????</a></li>



						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="./car.jsp">?????????</a></li>
					</ul>

					<button type="button" data-bs-toggle="modal"
						data-bs-target="#exampleModal" data-bs-whatever="@mdo"
						class="btn btn-outline-dark" style="margin-right: 1em;">??????/??????
					</button>

					<a href="login.html"><button class="btn btn-outline-success"
							type="submit">??????</button></a>

				</div>
			</div>
		</nav>
	</div>
	
	<!-- data-callback="handleCallback" -->
	<!-- google?????? -->
	<div id="g_id_onload"></div>
	<div class=" g_id_signin" data-type="standard" data-size="large"
		data-theme="outline" data-text="sign_in_with" data-shape="pill"
		data-logo_alignment="left"></div>




  <div class="container">

		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> User
					Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>

	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<form action="search" method="post">
				<label>????????????</label>
				<input type="number" name=id>
				<input type="submit" value="??????">
			</form>
		
			
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New User</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>????????????</th>
						<th>????????????</th>
						<th>??????</th>
						<th>??????</th>
						<th>??????</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${product.did}" /></td>
							<td><c:out value="${product.dname}" /></td>
							<td><c:out value="${product.dcount}" /></td>
							<td><c:out value="${product.dprice}" /></td>
							<td><a href="edit?id=<c:out value='${product.did}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="delete?id=<c:out value='${product.did}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
	
</div>
<% 
String strb1 = request.getParameter("b1");
String strt1 = request.getParameter("t1");
%>
?????????????????????<%=strb1%></br>
???????????????	<%=strt1%>



<!-- ???????????????????????? -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">
						<font style="vertical-align: inherit;"> <font
							style="vertical-align: inherit;">??????/??????</font>
						</font>
					</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="???"></button>
				</div>
				<div class="modal-body">
					<form action=LoginController method="post">
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label"> <font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">???????????????Email???</font>
							</font>
							</label> 
							<input type="text" class="form-control" id="recipient-name" name="email">
							
							<label for="recipient-name" class="col-form-label">
								<font style="vertical-align: inherit;">????????????????????????</font>
							</label> 
							<input type="text" class="form-control" id="recipient-name" name="passwd">
							
								
						</div>
						<div class="mb-3">
							<label for="message-text" class="col-form-label"> <font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">?????????????????????</font>
							</font>
							</label> </br>
							<!-- google enter -->
							<div class="g-signin2" data-onsuccess="onSignIn"></div>

						</div>
						<div class="mx-auto">
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary"
									data-bs-dismiss="modal">
									<font style="vertical-align: inherit;"> 
									<font style="vertical-align: inherit;">??????</font>
									</font>
								</button>
								<button type="submit" class="btn btn-primary">
									<font style="vertical-align: inherit;"> <font
										style="vertical-align: inherit;">??????</font>
									</font>
								</button>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
