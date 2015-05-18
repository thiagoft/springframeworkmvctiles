<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="background: #48762A;">
<div class="chamada row">
		
			<div class="twelve columns">
				<h3 style="color:white;">Detalhes do usu&aacute;rio</h3>
			</div>
		
</div>
</div>
<div class="row">
	<h4>Dados b&aacute;sicos</h4>
</div>
<br/>
<div class="row">
	<div class="two columns"><b>Avatar:</b></div>
	<div class="ten columns"><img style="width:128px; height:128px;" src='<c:url value="/user/avatar/${user.login}"/>'/></div>
</div>

<div class="row">
	<div class="two columns"><b>Nome:</b></div>
	<div class="ten columns">${user.nome}</div>
</div>
<br/>
<div class="row">
	<div class="two columns"><b>Login:</b></div>
	<div class="ten columns">${user.login}</div>
</div>
<br/>
<div class="row">
	<div class="two columns"><b>E-mail:</b></div>
	<div class="ten columns"><a href="mailto:${user.email}">${user.email}</a></div>
</div>