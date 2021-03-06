<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
div.radio-list label {
	font-weight: normal;
	margin-left: 5px;
	margin-right: 20px;
}

div.checkbox-list label {
	font-weight: normal;
	margin-left: 5px;
	margin-right: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>checkbox1</h1>
		<hr />
		<form:form method="post" modelAttribute="inputFormModel">
			<div class="form-group">
				<label>선택1:</label>
				<div class="radio-list">
					<form:radiobutton path="color1" value="red" label="빨강" />
					<form:radiobutton path="color1" value="yellow" label="노랑" />
					<form:radiobutton path="color1" value="blue" label="파랑" />
				</div>
			</div>
			<div class="form-group">
				<label>선택2:</label>
				<div class="checkbox-list">
					<form:checkbox path="color2" value="red" label="빨강" />
					<form:checkbox path="color2" value="yellow" label="노랑" />
					<form:checkbox path="color2" value="blue" label="파랑" />
				</div>
			</div>
			<div class="form-group">
				<label>선택3:</label>
				<div class="checkbox-list">
					<form:select path="color3" class="form-control"
						style="width:200px;">
						<form:option value="red" label="빨강" />
						<form:option value="yellow" label="노랑" />
						<form:option value="blue" label="파랑" />
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<label>동의 <form:checkbox path="agree" /></label>
			</div>
			<hr />
			<button type="submit" class="btn btn-primary">SUBMIT</button>
		</form:form>
		<hr />
		<table class="table table-bordered" style="width: 500px;">
			<tr>
				<td>선택1</td>
				<td>${ inputFormModel.color1 }</td>
			</tr>
			<tr>
				<td>석택2</td>
				<td><c:forEach var="c" items="${ inputFormModel.color2 }">             ${ c }
 </c:forEach></td>
			</tr>
			<tr>
				<td>선택3</td>
				<td>${ inputFormModel.color3 }</td>
			</tr>
			<tr>
				<td>동의</td>
				<td>${ inputFormModel.agree }</td>
			</tr>
		</table>
	</div>
</body>
</html>
