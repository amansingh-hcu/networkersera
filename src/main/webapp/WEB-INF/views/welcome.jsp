<!DOCTYPE html>

<html lang="en">
<head>
<title>Bootstrap Example</title>
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
	height: 500px
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
  background-color: #808080;
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

	<div class="container-fluid text-center">
		<div class="content">
			<form>
				<div class="form-group row">
					<h2 align="left">Welcome to Networkersera</h2>
					</br>
				</div>
				<div class="form-group row">
					<label for="userId" class="col-sm-2 col-form-label">User Id</label>
					<div class="col-sm-4">
						<input type="text" readonly class="form-control" id="userId"
							name="userId" value="${user.userId}">
					</div>
				</div>
				<div class="form-group row">
					<label for="userName" class="col-sm-2 col-form-label">User
						Name</label>
					<div class="col-sm-4">
						<input type="text" readonly class="form-control" id="userName"
							name="userName" value="${user.userName}">
					</div>
				</div>
				<div class="form-group row">
					<label for="userEmail" class="col-sm-2 col-form-label">User
						Email</label>
					<div class="col-sm-4">
						<input type="text" readonly class="form-control" id="userEmail"
							name="userEmail" value="${user.userEmail}">
					</div>
				</div>
				<div class="form-group row">
					<label for="userPassword" class="col-sm-2 col-form-label">User
						Password</label>
					<div class="col-sm-4">
						<input type="text" readonly class="form-control" id="userPassword"
							name="userPassword" value="${user.userPassword}">
					</div>
				</div>
			</form>

		</div>
	</div>
	<div>
		<jsp:include page="./shared/footer.jsp" flush="true" />
	</div>

</body>
</html>
