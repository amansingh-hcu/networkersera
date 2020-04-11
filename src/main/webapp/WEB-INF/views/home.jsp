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
	height: 513px
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

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="#">Link1</a>
				</p>
				<p>
					<a href="#">Link2</a>
				</p>
				<p>
					<a href="#">Link3</a>
				</p>
			</div>
			<div class="col-sm-8 text-left">
				<div class="content">
					<div class="text">
						<h1 style="color: #e12869; text-align: justify;">Welcome to Online Test</h1>
						<p style="text-align: justify;">Online Exam means the
							candidate sits in front of a computer at the examination centre
							and the questions are presented on the computer monitor and the
							candidate answers the questions on the computer through the use
							of mouse. Unlike the traditional paper-pencil based test which is
							generally offered on a single day to all candidates, Online Exam
							will be offered over a period of time and the candidate can
							choose the Center, the Day and Time of his/her convenience to
							take the test.</p>
						<br />
						<h1 style="color: #e12869; text-align: justify;">Purpose</h1>
						<p style="text-align: justify;">Online Exams System fulfills
							the requirements of the institutes to conduct the exams
							online.They do not have to go to any software developer to make a
							separate site for being able to conduct exams online.They just
							have to register on the site and enter the exam details and the
							lists of the students which can appear in the exam.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
			</div>
		</div>
	</div>
	<div>
		<jsp:include page="./shared/footer.jsp" flush="true" />
	</div>

</body>
</html>
