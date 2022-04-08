<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book</title>
</head>
<body>
	<div class="container">
		<!-- page boundary-->
		<%@ include file="header.jsp"%><br>
		<div class="text-center">
			<h1>Book Registration</h1>
		</div> <br>
		<div class="panel pnel-primary">
			<div class="text-center">
				<!--Bring text into center-->
			</div>
			<c:if test="${message ne null}">
				<div class="alert alert-success">
					<strong>${message}</strong>
				</div>
			</c:if>
			<div class="panel pnel-body">
				<form action="saveBook" method="post">
					<div class="row">
						<div class="col-md-3">
							<strong>Book Name</strong>
						</div>
						<div class="col-md-9">
							<input type="text" name="name" />
						</div>
					</div>
					</br>
					<div class="row">
						<div class="col-md-3">
							<strong>Author</strong>
						</div>
						<div class="col-md-9">
							<input type="text" name="author" />
						</div>
					</div>
					</br>
					<div class="row">
						<div class="col-md-3">
							<strong>Publication</strong>
						</div>
						<div class="col-md-9">
							<input type="text" name="publication" />
						</div>
					</div>
					</br>
					<div class="row">
						<div class="col-md-3">
							<strong>Reserved</strong>
						</div>
						<div class="col-md-9">
							<input type="text" name="reserved" />
						</div>
					</div>
					</br>
					<button class="btn btn-primary" type="submit">Register</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>