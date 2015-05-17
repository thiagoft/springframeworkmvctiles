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
				<label for="login">Nome do usuário (login):<sf:errors path="login" /></label>
				<sf:input path="login" cssClass="form-control" />
			</div>
			<div class="form-group">
				<label for="senha">Senha:<sf:errors path="senha" /></label>
				<sf:password path="senha" cssClass="form-control" />
			</div>
			<button type="submit" value="Cadastrar" class="btn btn-default" >Salvar</button>
			
			<!-- Outras propriedades de sd:errors
			 	- cssClass : adiciona uma classe de css ao elemento;
			 	- element : define qual elemento HTML que irá envolver cada mensagem de
				erro;
				- cssStyle : permite ao desenvolvedor incluir estilo CSS customizado para
				uma localização específica;
				- delimiter : que texto será usado para separar as mensagens de erro expostas.
				Seu valor padrão é <BR/>.
			 -->
			
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
	</div>	