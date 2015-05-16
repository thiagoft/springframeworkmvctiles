<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		
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