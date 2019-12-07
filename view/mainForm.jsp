<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<title>To-DO List</title>
<!--  Bootstrap -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!--  --------- -->
<script type="text/javascript">
	<!-- Todo 이동 클릭 시 실행 함수 -->
	function move(type, seq) {
		var map = {
			type : type,
			seq : seq
		};
		location.href="move.do?type=" + type + "&seq=" + seq;
	}
	<!-- ---------------------->
</script>

</head>

<body>

	<div class="container">
		<div class="page-header">
			<h1> Toy_Project_01 <small>To-Do List</small>
				<button type="button" class="btn btn-primary" onclick = "location.href='writeForm.do' ">
				To-Do Add</button>
			</h1>
		</div>

		<!-- To-Do -->
		<div class="col-md-3">
			<div class="alert alert-success" role="alert">To-Do</div>

			<!-- Post Add Section -->
			<c:forEach var="arr1" items="${arr1 }">
				<div style="height: auto; border: 2px solid;">
					<div>
						<h4>
							<b>${arr1.title }</b>
						</h4>
					</div>
					<div style="height: 13vh;">${arr1.content }</div>
					<div class="text-right">
						<button type="button" class="btn btn-primary"
								onclick="move(${arr1.type }, ${arr1.seq })">
						</button>
					</div>
				</div>
				<br>
			</c:forEach>
			<!-- ---------------- -->
		</div>

		<!-- Doing -->
		<div class="col-md-3 col-md-offset-1 mt-1">
			<div class="alert alert-info" role="alert">Doing</div>
			
			<!-- Post Add Section -->
			<c:forEach var="arr2" items="${arr2 }">
				<div style="height: auto; border: 2px solid;">
					<div>
						<h4>
							<b>${arr2.title }</b>
						</h4>
					</div>
					<div style="height: 13vh;">${arr2.content }</div>
					<div class="text-right">
						<button type="button" class="btn btn-primary"
								onclick="move(${arr2.type }, ${arr2.seq })">
						</button>
					</div>
				</div>
				<br>
			</c:forEach>
			<!-- ---------------- -->
		</div>

		<!-- Done -->
		<div class="col-md-3 col-md-offset-1 mt-1">
			<div class="alert alert-warning" role="alert">Done</div>
			
			<!-- Post Add Section -->
			<c:forEach var="arr3" items="${arr3 }">
				<div style="height: auto; border: 2px solid;">
					<div>
						<h4>
							<b>${arr3.title }</b>
						</h4>
					</div>
					<div style="height: 13vh;">${arr3.content }</div>
					<div class="text-right">
						<button type="button" class="btn btn-primary" 
								onclick="move(${arr3.type }, ${arr3.seq })">
						</button>
					</div>
				</div>
				<br>
			</c:forEach>
			<!-- ---------------- -->
		</div>
		
	</div>

</body>
</html>