package br.com.thiagoft.springframeworkmvctiles.controllers;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.thiagoft.springframeworkmvctiles.entities.User;
import br.com.thiagoft.springframeworkmvctiles.interfaces.dao.UserDAO;

@Controller
public class AutenticationController {

	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(@RequestParam("login") String login,
						@RequestParam("senha") String senha,
						HttpSession sessao) {
		
		User user = userDAO.getUser(login, senha);
		
		if (user == null) {
			return "loginFailed";
		} else {
			user.setLastLogin(new Date());
			userDAO.save(user);
			sessao.setAttribute("sessionUser", user);
			return "redirect:/";
		}
	}
	
}
