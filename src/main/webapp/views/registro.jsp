<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<sf:form modelAttribute="user" action="executarRegistro">
		<label for="nome">Nome:</label>
		<sf:input path="nome"/>
		<label for="email">Email:</label>
		<sf:input path="email"/>
		<label for="login">Nome do usuário (login):</label>
		<sf:input path="login"/>
		<label for="senha">Senha:</label>
		<sf:password path="senha"/>
		<input type="submit" value="Cadastrar"/>
		
		<!-- Outras tags de form do spring 
			- checkbox : usada para renderizar campos do tipo caixa de seleção;
			- checkboxes : usada para renderizar uma lista de caixas de seleção;
			- radiobutton : para radio buttons;
			- select : para caixas de seleção. E sim, há também uma option para que
			possamos definir com maior controle as opções presentes nesta;
			- textarea : para caixas de texto de múltiplas linhas;
			- hidden : usada para campos ocultos. -->
		
		<!-- interessante citar que path é o nome da propriedade do objeto -->
		<!-- poderiamos utilizar um objeto de composição e acessar seus atributos -->
		<!-- input name="assunto" path="assunto.nome" -->
		<!-- no caso de não querer acoplar-se à taglib do spring, também é possivel utilizar
		o input padrão do html por exemplo <input type="text" name="email" /> -->
		
	</sf:form>
</body>
</html>