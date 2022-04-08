<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>

</head>
<body>
	<div class="container"> <!-- page boundary-->
	<%@ include file="header.jsp" %><br>
	<div class="text-center">  <!--Bring text into center-->
				<h1>Update Book Details</h1><br>
			</div>
	
			<div class="panel pnel-primary">
			<div class="text-center">  <!--Bring text into center-->
			</div>
			<c:if test="${message ne null}">
				<div class="alert alert-success"><strong>${message}</strong></div>
			</c:if>
				<div class="panel pnel-body">
					<form action="updateBook" method="post"> 
				<input type="hidden" name="id" value="${updatedData.id}"/> 
						<div class="row">
							<div class="col-md-3"><strong>Name</strong></div>
							<div class="col-md-9"><input type="text" name="name" value="${updatedData.name}"/> </div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3"><strong>Author</strong></div>
							<div class="col-md-9"><input type="text" name="author" value="${updatedData.author}"/> </div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3"><strong>Publication</strong></div>
							<div class="col-md-9"><input type="text" name="publication"value="${updatedData.publication}"/> </div>
						</div>
						</br>
						<div class="row">
							<div class="col-md-3"><strong>Reserved</strong></div>
							<div class="col-md-9"><input type="text" name="reserved" value="${upldatedData.reserved}"/> </div>
						</div>
		
						<button class="btn btn-primary" type="submit">Edit</button>
					</form>
				</div>
			</div>
		</div>
	
</body>
</html>