<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details</title>
</head>
<body>
	<div class="container">
	<%@ include file="header.jsp" %>
	
		<div class="panel pnel-primary">
			<div class="text-center">  <!--Bring text into center-->
				<h1>Book Information</h1>
			</div>
				<div class="panel pnel-body">
						<div class="row">
							<div class="col-md-3"><strong>Name</strong></div>
							<div class="col-md-9">${details.name} </div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong>Author</strong></div>
							<div class="col-md-9">${details.author} </div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong>Publication</strong></div>
							<div class="col-md-9">${details.publication}</div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong>Reserved</strong></div>
							<div class="col-md-9">${details.reserved} </div>
						</div>
				</div>
			</div>
	</div>
	
</body>
</html>