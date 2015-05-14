package br.com.thiagoft.springframeworkmvctiles.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import br.com.thiagoft.springframeworkmvctiles.entities.User;

@Controller("user")
@SessionAttributes("sessionUser") //pode receber uma string ou uma array de strings representando os atributos da session
public class UserController {

	@RequestMapping("/user/authenticated")
	//@ModelAttribute recebe o nome do objeto presente na sessão
	public ModelAndView autenticationInfo(@ModelAttribute("sessionUser") User user) {
		ModelAndView mav = new ModelAndView("user/show");
		mav.getModel().put("user", user);
		return mav;
	}
	
	/* Métodos importantes em ModelAndView
	 - String getViewName() : retorna o nome da view;
	 - void setViewName(String valor) : define o nome da view a ser renderizada;
	 - ModelAndView addObject(String nome, Object valor) : adiciona um novo atributo 
	 ao modelo;
	 - ModelMap getModelMap() : retorna um objeto do tipo ModelMap representando o 
	 modelo. Esta classe por baixo dos panos é uma implementação da	interface 
	 Map<String, Object> do Java;
	 - void clear() : limpa o modelo.*/
	
}
