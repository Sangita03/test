<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books</title>
</head>
<body>
	<div class="container">
	<%@ include file="header.jsp" %><br>
	<div class="text-center">  <!--Bring text into center-->
				<h1>List of Books</h1>
			</div>
	
		<span>${message}</span>
		<table class="table table-hover table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>Id</th>
					<th>name</th>
					<th colSpan = "3">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bookList}" var="blist">
					<tr>
						<td>${blist.id }</td>
						<td>${blist.name }</td>
						<td><a href="bookDetails?id=${blist.id }">Details</a></td>
						<td><a href="deleteBook?id=${blist.id }">Delete</a></td>
						<td><a href="editBook?id=${blist.id }">Edit</a></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
	
</body>
</html>