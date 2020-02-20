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
		<div class="col-sm-4"></div>
		<div class="col-sm-4 shadow p-3 mb-5 bg-white rounded">
		
		<h3>Student Details</h3>
		<form:form action="saveStudent" modelAttribute="student">
		
		<table class="table">
			<tbody>
				<tr>
					<td><label>First Name</label></td>
					<td><label>${student.firstName }</label></td>
				</tr>
				<tr>
					<td><label>Subject</label></td>
					<td><label>${student.subject }</label></td>
				</tr>
				<tr>
					<td><label>Marks</label></td>
					<td><label>${student.marks }</label></td>
				</tr>
				<tr>
					<td><a href="${pageContext.request.contextPath}/student/list" class="btn btn-primary">Back to student list</a>
		</td>
					<td><label></label></td>
				</tr>
			</tbody>
		</table>
		
		</form:form>
		<div class="clear;both;"></div>
		
	</div>
	
	<div class="col-sm-4"></div>
	</div>
	</div>
	
	</body>
</html>