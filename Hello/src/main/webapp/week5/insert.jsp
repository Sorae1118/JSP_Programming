<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>input</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">
<div id="wrapper" class="divided">
<section class="wrapper style1 align-center">
	<div class="inner">
	<div class="index align-left">
	<section>
		<header>
			<h3>Personal information <br> input form</h3>
		</header>
		<div class="content">
			<form action="insert_ok.jsp" method="post">
				<div class="fields">
					<div class="field half">
						<label for="id">Student ID</label>
						<input type="text" name="id" id="id" value="" autocomplete='off' required />
					</div>
					<div class="field half">
						<label for="name">Name</label>
						<input type="text" name="name" id="name" value="" autocomplete='off' required>
					</div>
					<div class="field third">
						<input type="radio" id="priority-low" value="1학년" name="grade" checked />
							<label for="priority-low">1 Grade</label>
					</div>
					<div class="field third">
						<input type="radio" id="priority-normal" value="2학년" name="grade" />
						<label for="priority-normal">2 Grade</label>
					</div>
					<div class="field">
						<label for="department">Selection</label>
						<select name="lang" id="department">
							<option value="None">- Category -</option>
							<option value="Java">Java</option>
							<option value="Kotlin">Kotlin</option>
							<option value="Ruby">Ruby</option>
							<option value="JavaScript">JavaScript</option>
						</select>
					</div>
				</div>
				<ul class="actions">
					<li><input type="submit" name="submit" id="submit" value="Send Information" /></li>
				</ul>
			</form>
		</div>
	</section>
	</div>
	</div>
</section>
</div>
</body>
</html>