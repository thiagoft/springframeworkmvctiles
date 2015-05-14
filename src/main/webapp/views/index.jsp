<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="../../favicon.ico">
		
		<title>Springframework MVC com Tiles Modelo</title>
		
		<!-- Bootstrap core CSS -->
		<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	
	<body>

		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Project name</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<form class="navbar-form navbar-right" action="<c:url value="/login"/>" method="post">
						<div class="form-group">
							<input type="text" placeholder="Email" class="form-control" name="login" >
						</div>
						<div class="form-group">
							<input type="password" placeholder="Password" class="form-control" name="senha">
						</div>
						<button type="submit" class="btn btn-success">Entrar</button>
					</form>
				</div><!--/.navbar-collapse -->
			</div>
		</nav>
		
	 <!-- Main jumbotron for a primary marketing message or call to action -->
	 <div class="jumbotron">
	   <div class="container">
	     <div class="panel panel-primary">
			  <div class="panel-heading">News</div>
			  <div class="panel-body">
				<table class="table table-condensed table-striped">
					<thead>
						<th>Id</th>
						<th>Title</th>
						<th>Content</th>
						<th>Edit</th>
					</thead>
					
					<tbody>
						<c:forEach items="${news}" var="teste">
							<tr>
								<td>${teste.id}</td>
								<td>${teste.title}</td>
								<td>${teste.content}</td>
								<td><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			  </div>
			</div>
	   </div>
	 </div>
	
	 <div class="container">	
	   <hr>
	
	   <footer>
	     <p>© ThiagoFT 2015</p>
	   </footer>
	 </div> <!-- /container -->
	
	
	 <!-- Bootstrap core JavaScript
	 ================================================== -->
	 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
  

	</body>
</html>