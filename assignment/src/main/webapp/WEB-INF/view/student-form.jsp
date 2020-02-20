<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			Save Student
		</title>
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
		
	</head>
	<body>
	
			<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page">Student Form</li>
  </ol>
</nav>
		
	
	
		<div class="container-fluid">
		<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8 shadow p-3 mb-5 bg-white rounded">
		
		<h3>Save Student</h3>
		<form:form action="saveStudent" modelAttribute="student">
		
		<table class="table">
			<tbody>
				<tr>
					<td><label>First Name : </label></td>
					<td><form:input path="firstName" /></td>
				</tr>
				<tr>
					<td><label>Subject : </label></td>
					<td><form:input path="subject" /></td>
				</tr>
				<tr>
					<td><label>Marks : </label></td>
					<td><form:input path="marks" /></td>
				</tr>
				<tr>
					<td><a href="${pageContext.request.contextPath}/student/list" class="btn btn-primary">Back to student list</a>
		</td>
					<td><button type="submit" class="btn btn-primary">Save</button></td>
				</tr>
			</tbody>
		</table>
		
		</form:form>
		<div class="clear;both;"></div>
		
	</div>
	
	<div class="col-sm-2"></div>
	</div>
	</div>
	
	</body>
</html>