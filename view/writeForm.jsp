<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!--  Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!--  --------- -->
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4 text-center well">
				<h1>To-Do list</h1>
			</div>
			<div class="col-md-4 col-md-offset-4 well">
				<form method="post" action="write.do">
					<div class="form-group well">
						<label for="title">Title</label> 
						<input type="text" name="title" id="title" style="width: 80%" />
					</div>

					<div class="form-group well">
						<label for="content">Content</label>
						<textarea class="form-control" name="content" rows="3" style="width: 100%"></textarea>
<!-- 						<input type="hidden" id="content">
						<script>
						document.getElementById('content').value = document.getElementById('contentVal').value;
						</script> -->
					</div>

					<div class="checkbox well">
						<label> <input type="checkbox" name="priority" value="0" checked/>Priority
						</label>
					</div>
					<div class="text-right">
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>