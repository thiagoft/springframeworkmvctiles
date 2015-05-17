package br.com.thiagoft.springframeworkmvctiles.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.thiagoft.springframeworkmvctiles.entities.News;
import br.com.thiagoft.springframeworkmvctiles.entities.User;
import br.com.thiagoft.springframeworkmvctiles.interfaces.dao.NewsDAO;
import br.com.thiagoft.springframeworkmvctiles.interfaces.dao.UserDAO;

@Controller
/**
 * Controller to the home of the application.
 * 
 * @author Thiago Fonseca
 */
public class HomeController {

	private NewsDAO newsDAO;
	private UserDAO userDAO;
	
	public NewsDAO getNewsDAO() {
		return newsDAO;
	}	
	@Autowired
	public void setNewsDAO(NewsDAO newsDAO) {
		this.newsDAO = newsDAO;
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}
	@Autowired
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@RequestMapping("/")
	public String index(Map<String,Object> model) {
		model.put("news", this.getNewsDAO().list());
		return "index";
	}
	
	@RequestMapping("/registro")
	public String registro(Map<String, Object> model) {
		if (model.get("user") == null) {
			model.put("user", new User());
		}
		return "registro";
	}
	
	@RequestMapping(value="/executarRegistro", method=RequestMethod.POST)
	public String executarRegistro(@Valid User user, //Valid instrui ao Spring MVC a validar o objeto anotado
								   BindingResult bindingResult, //Interface do spring reponsavel por armazenar
								   								//as ocorrências de erro do formulário
								   								//é possivel iterar sobre e tratar erros e/ou
								   								//adicionar regras de negócio.
								   								//exemplo anotado no final desta classe
								   HttpSession sessao) {
		
		if (bindingResult.hasErrors()) {
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("user", user);
			return registro(model);
		}
		
		getUserDAO().save(user);
		sessao.setAttribute("user", user);
		return "redirect:/";
	}
	
	/*
	 	List<FieldError> erros_email = bindingResult.getFieldErrors("email");
		for (FieldError erro : erros_email) {
			if (erro.getCode().equals("Email") && contemEmail(usuario.getEmail())) {
				// aplico a convenção do sistema
				usuario.setEmail(usuario.getEmail() + "@gmail.com");
			}
		}
	 */ 
	 
}
