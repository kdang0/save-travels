<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Travels</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h1 class="blue">Save Travels</h1>
	<table class="table table-bordered table-dark">
		<thead>
			<tr>
				<th>Expense</th>
				<th>Vendor</th>
				<th>Amount</th>
				<th>Actions</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="expense" items="${expenses}">
				<tr>
					<td><a href="/expenses/${expense.id}"><c:out value="${expense.title}"/></a></td>
					<td><c:out value="${expense.vendor}"/></td>
					<td>$<c:out value="${expense.amount}"/></td>
					<td class="d-flex align-items-center gap-2">
						<a href="/expenses/${expense.id}/edit">edit</a>
						<form action="/expenses/${expense.id}" method="post">
							<input type="hidden" name="_method" value="delete">
							<button type="submit" class="btn btn-danger">Delete</button>
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<h2 class="blue">Add an expense</h2>
	<form:form action="/expenses" method="post" modelAttribute="expense">
	    <p>
	        <form:label path="title">Expense Name: </form:label>
	        <form:errors path="title" class="text-danger"/>
	        <form:input path="title"/>
	    </p>
	    <p>
	        <form:label path="vendor">Vendor: </form:label>
	        <form:textarea path="vendor"/>
	        <form:errors path="vendor" class="text-danger"/>
	    </p>
	    <p>
	        <form:label path="amount">Amount: </form:label>
	        <form:input path="amount"/>
	    	<form:errors path="amount" class="text-danger"/>
	    </p>
	    <p>
	        <form:label path="description">Description: </form:label>
	        <form:errors path="description" class="text-danger"/>     
	        <form:input type="text" path="description"/>
	    </p>    
	    <button type="submit" class="btn btn-primary">Submit</button>
	</form:form>   
	
</body>
</html>