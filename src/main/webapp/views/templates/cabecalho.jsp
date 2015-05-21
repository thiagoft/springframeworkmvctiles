<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Projeto Spring MVC</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<form class="navbar-form navbar-right" action="<c:url value="/j_spring_security_check"/>" method="post">
				<div class="form-group">
					<input type="text" placeholder="Email" class="form-control" name="j_username" />
				</div>
				<div class="form-group">
					<input type="password" placeholder="Password" class="form-control" name="j_password" />
				</div>
				<button type="submit" class="btn btn-success">Entrar</button>
			</form>
		</div><!--/.navbar-collapse -->
	</div>
</nav>