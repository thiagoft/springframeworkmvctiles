<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
			
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="resources/favicon.ico">
		
		<!-- Inclus�o do t�tulo pelo Tiles -->
		<title>
			<tiles:getAsString name="titulo" />
		</title>
		
		<!-- Bootstrap core CSS -->
		<link href="<c:url value="/resources/bootstrap/css/bootstrap.css"/>" rel="stylesheet">
		<!-- My - CSS -->
		<link href="<c:url value="/resources/mytheme.css"/>" rel="stylesheet">
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
	</head>
	
	<body>
		<!-- Inclus�o do cabe�alho -->
		<tiles:insertAttribute name="cabecalho"/>
		<div class="container" >
			<!-- Inclus�o do conte�do -->
			<tiles:insertAttribute name="conteudo"/>
			<!-- Inclus�o do rodap� -->
			<tiles:insertAttribute name="rodape"/>
			
			<!-- Bootstrap core JavaScript -->
			<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
			<!-- Include all compiled plugins (below), or include individual files as needed -->
			<script src="<c:url value="/resources/bootstrap/js/bootstrap.js"/>"></script>
		</div>
    
	</body>
</html>