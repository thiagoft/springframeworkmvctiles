<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	<div class="container" >
		<sf:form modelAttribute="user" action="executarRegistro">
			<div class="form-group">
				<label for="nome">Nome:</label>
				<sf:input path="nome" cssClass="form-control" />
			</div>
			<div class="form-group">
				<label for="email">Email:<sf:errors path="email" /></label>
				<sf:input path="email" cssClass="form-control" />
			</div>
			<div class="form-group">
				<label for="login">Nome do usu�rio (login):<sf:errors path="login" /></label>
				<sf:input path="login" cssClass="form-control" />
			</div>
			<div class="form-group">
				<label for="senha">Senha:<sf:errors path="senha" /></label>
				<sf:password path="senha" cssClass="form-control" />
			</div>
			<button type="submit" value="Cadastrar" class="btn btn-default" >Salvar</button>
			
			<!-- Outras propriedades de sd:errors
			 	- cssClass : adiciona uma classe de css ao elemento;
			 	- element : define qual elemento HTML que ir� envolver cada mensagem de
				erro;
				- cssStyle : permite ao desenvolvedor incluir estilo CSS customizado para
				uma localiza��o espec�fica;
				- delimiter : que texto ser� usado para separar as mensagens de erro expostas.
				Seu valor padr�o � <BR/>.
			 -->
			
			<!-- Outras tags de form do spring 
				- checkbox : usada para renderizar campos do tipo caixa de sele��o;
				- checkboxes : usada para renderizar uma lista de caixas de sele��o;
				- radiobutton : para radio buttons;
				- select : para caixas de sele��o. E sim, h� tamb�m uma option para que
				possamos definir com maior controle as op��es presentes nesta;
				- textarea : para caixas de texto de m�ltiplas linhas;
				- hidden : usada para campos ocultos. -->
			
			<!-- interessante citar que path � o nome da propriedade do objeto -->
			<!-- poderiamos utilizar um objeto de composi��o e acessar seus atributos -->
			<!-- input name="assunto" path="assunto.nome" -->
			<!-- no caso de n�o querer acoplar-se � taglib do spring, tamb�m � possivel utilizar
			o input padr�o do html por exemplo <input type="text" name="email" /> -->
			
		</sf:form>
	</div>	