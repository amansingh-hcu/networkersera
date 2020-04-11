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
	height: 520px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
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
		<div class="row content">
	<h2>Registration Form</h2>
	<form action="registerUser" method="post">
		<div class="form-group">
			<label for="userName">User Name</label> 
			<input type="text" class="form-control" id="userName" name="userName" aria-describedby="userNameHelp" placeholder="Enter user name"> 
		</div>
		<div class="form-group">
			<label for="userEmail">User Email</label> 
			<input type="email" class="form-control" id="userEmail" name="userEmail" aria-describedby="userEmailHelp" placeholder="Enter user email"> 
		</div>
		<div class="form-group">
			<label for="password">Password</label> 
			<input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="Password">
		</div>
		<div class="form-check">
			<input type="checkbox" class="form-check-input" id="rememberCheck">
			<label class="form-check-label" for="rememberCheck">Remember me</label>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
		</div>
	</div>
	<div>
		<jsp:include page="./shared/footer.jsp" flush="true" />
	</div>

</body>
</html>
