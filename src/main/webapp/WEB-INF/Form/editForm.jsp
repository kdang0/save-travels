<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><c:out value="${expense.title}"/></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="d-flex justify-content-between align-items-center gap-3 padding">
		<h1 class="blue">Edit Expense</h1>
		<a href="/expenses">Go back</a>
	</div>
	<form:form action="/expenses/${expense.id}" method="post" modelAttribute="expense">
	    <input type="hidden" name="_method" value="put">
	    <p>
	        <form:label path="title">Title</form:label>
	        <form:errors path="title" class="text-danger"/>
	        <form:input path="title"/>
	    </p>
	    <p>
	        <form:label path="vendor">Vendor</form:label>
	        <form:errors path="vendor" class="text-danger"/>
	        <form:textarea path="vendor"/>
	    </p>
	    <p>
	        <form:label path="amount">Language</form:label>
	        <form:errors path="amount" class="text-danger"/>
	        <form:input path="amount"/>
	    </p>
	    <p>
	        <form:label path="description">Description</form:label>
	        <form:errors path="description" class="text-danger"/>     
	        <form:input path="description"/>
	    </p>    
	    <button type="submit" class="btn btn-primary">Submit</button>
	</form:form>
</body>
</html>