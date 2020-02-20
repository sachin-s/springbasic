<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>login page</title>
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	</head>
	<body>
	<div class="jumbotron" style="height:100%;width:100%;">
	
	<div class="row" style="margin-top">
	
	<div class="col"></div>
	<div class="col shadow p-3 mb-5 bg-white rounded">
	<h3>Login </h3>
	
	<form:form action="${pageContext.request.contextPath }/authenticateTheUser" method="POST">
	
		<p>
		<c:if test="${param.error!=null }">
			<i class="text-danger">Sorry you have entered invalid username/password	</i>
		</c:if>
		</p>
		<div class="form-group">
			<label>User name</label>  <input type="text" name="username"class="form-control" />
			<small id="emailHelp" class="form-text text-muted">please use "user" as user name and "password" as password</small>
		</div>
		<div class="form-group">
			<label>Password</label>  <input type="password" name="password" class="form-control"/>
		</div>
		<div class="form-group">
			<button type="submit" value="Login" class="btn btn-primary">Login</button>
			<small  class="form-text text-muted">you can also loggin as manager and and admin using same password</small>
		</div>
	</form:form>
	</div>
	<div class="col"></div>
	</div>
	</div>
	
	</body>
</html>