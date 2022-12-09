<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="d-flex padding justify-content-between align-items-center">
		<h1 class="blue">Expense Details</h1>
		<a href="/expenses">Go back</a>
	</div>
	<p>Expense Name: <c:out value="${expense.title}"/></p>
	<p>Expense Description: <c:out value="${expense.description}"/></p>
	<p>Vendor: <c:out value="${expense.vendor}"/></p>
	<p>Amount Spent: <c:out value="${expense.amount}"/></p>
</body>
</html>