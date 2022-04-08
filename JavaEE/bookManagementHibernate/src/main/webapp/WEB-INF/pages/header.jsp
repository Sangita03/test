<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
			
			<c:if test="${sessionScope.userSession ne null }">
				Welcome : ${sessionScope.userSession.name } your email: ${sessionScope.userSession.email }
			</c:if>
			</br>
			</br>
			<a href="home"><button type="button" class="btn btn-success">Home</button></a>
			<a href="getAllBooks"><button type="button" class="btn btn-success">List of Books</button></a>
			<a href="addBook"><button type="button" class="btn btn-success">Register Book</button></a>
		</div>
</body>
</html>