package br.com.thiagoft.springframeworkmvctiles.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="user")
public class User implements Serializable {
	
	/* Validações do Bean Validator mais utilizadas
		- @NotNull : garante que o atributo anotado não possua valor nulo;
		- @NotEmpty : aplicável a coleções ou strings, verifica se o texto digitado está
	em branco ou se a lista está vazia;
		- @Size : usada para garantir que o tamanho de um texto esteja dentro dos pa-
	râmetros limitadores min ou max. Importante salientar que não é necessária
	a presença dos dois parâmetros, mas sim ao menos um;
		- @Email : específica do Hibernate MVC, é usada para garantir que o valor do
	atributo seja um endereço de e-mail válido formalmente ;
		- @Pattern : recebe como parâmetro obrigatório regexp representando uma
	expressão regular contra a qual será validado o atributo anotado. Talvez seja
	a anotação mais poderosa da JSR-303 devido à grande flexibilidade oferecida
	pelas expressões regulares.*/
	
	private String id; 
	
	private String nome;
	
	@Email(message="Isto não é um e-mail válido") @NotNull @NotEmpty
	private String email;
	
	@NotNull @NotEmpty
	@Size(min=8, max=32, message="Login muito curto ou muito longo")
	private String login;
	
	@NotNull @NotEmpty
	
	private String senha;
	private Date lastLogin;
	
	@Id
	@Generated(GenerationTime.INSERT)
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id", unique=true)
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	@Column(name="nome", length=100)
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Column(name="login", length=100, unique=true)
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	
	@Column(name="senha", length=100)
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	@Temporal(value = TemporalType.TIMESTAMP)
	@Column(name="last_login")
	public Date getLastLogin() {
		return lastLogin;
	}
	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}
	
	public User(String login, String senha, String nome) {
		this.login = login;
		this.senha = senha;
		this.nome = nome;
	}
	
	@Column(name="email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public User() {}
}
