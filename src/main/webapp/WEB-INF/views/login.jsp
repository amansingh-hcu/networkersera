<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 513px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 60px; /* Set the fixed height of the footer here */
  background-color: #101010;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>

</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<jsp:include page="./shared/header.jsp" flush="true" />
		</div>
	</nav>

	<div class="container-fluid">
		<div class="content input-group mb-3">
			<br>
			<p>Join over 7 million developers, <br>
			practice coding skills, <br>
			prepare for interviews, <br>
			and get hired.</p>
			<!-- <svg class="bi bi-bell" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M8 16a2 2 0 002-2H6a2 2 0 002 2z"/>
  <path fill-rule="evenodd" d="M8 1.918l-.797.161A4.002 4.002 0 004 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 00-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 111.99 0A5.002 5.002 0 0113 6c0 .88.32 4.2 1.22 6z" clip-rule="evenodd"/>
</svg> -->

			<form action="login" method="post">
				<div class="form-group">
					<label for="userName">User Name</label> 
					<input type="text" class="form-control" id="userName" name="userName" aria-describedby="userNameHelp" placeholder="Enter user name"> 
				</div>
				<div class="form-group">
					<label for="password">Password</label> 
					<input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="Password">
				</div>
				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="rememberCheck">
					<label class="form-check-label" for="rememberCheck">Remember me</label>
				</div>
				<c:if test="${not empty errorMessage}">
					<div class="alert alert-danger">${errorMessage}</div>
				</c:if>
				<button type="submit" class="btn btn btn-primary btn-lg">Login</button>
				<br>
				<p>Don't have an account? <a href="register"><strong>Sign up</strong></a></p>
			</form>
		</div>
	</div>
	
	<div>
		<jsp:include page="./shared/footer.jsp" flush="true" />
	</div>

</body>
</html>
