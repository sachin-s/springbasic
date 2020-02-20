<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Students list</title>
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
		</head>
	<body>
		<nav aria-label="breadcrumb">
  			<ol class="breadcrumb">
   				 <li class="breadcrumb-item"><a href="#">Home</a></li>
   				 <li class="breadcrumb-item active" aria-current="page">Student Dashboard</li>
 			 </ol>
 		
	
 			 <form:form class="float-right mr-5" action="${pageContext.request.contextPath }/logout" method="POST">
 			 
 			 <label class="mr-5">logged in as <security:authentication property="principal.username" /></label>
			<button type="submit" class="btn btn-danger">Logout</button>
			</form:form>
		</nav>
		<div class="container-fluid">
			<input type="button" value="Add/Update Student" onclick="window.location.href='showFormForAdd' " class="btn btn-primary"/>
	
				<table class="table mt-3">
					<thead class="thead-light">
					<tr>
						<th scope="col">First Name</th>
						<th scope="col">Subject</th>
						<th scope="col">Marks</th>
						<th scope="col">Action</th>
						</tr>
					</thead>
					<!-- loop over and print all students -->
					
					<tbody>
					<c:forEach var = "tempStu" items="${students}">
					
					<c:url var="updateLink" value="/student/showFormToView">
						<c:param name="studentId" value="${tempStu.id}" />
					</c:url>
					<c:url var="deleteLink" value="/student/deleteStudent">
						<c:param name="studentId" value="${tempStu.id}" />
					</c:url>
						<tr>
							<td> ${tempStu.firstName} </td>
							<td> ${tempStu.subject} </td>
							<td> ${tempStu.marks} </td>
							<td><a href="${updateLink}">view</a> | <a onclick="if(!(confirm('are you sure you want to delete this student?'))) return false" href="${deleteLink}">delete</a></td>
						</tr>
					</c:forEach>	
					</tbody>
				</table>
				<br><p>Note: If you enter the name and subject, which is already stored in the records, it will update marks field of the existing record only</p>
			
			</div>
		</body>
</html>