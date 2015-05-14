package br.com.thiagoft.springframeworkmvctiles.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.thiagoft.springframeworkmvctiles.entities.News;
import br.com.thiagoft.springframeworkmvctiles.interfaces.dao.NewsDAO;

@Controller
public class NewsController {
	
	private NewsDAO newsDAO;
	
	public NewsDAO getNewsDAO() {
		return newsDAO;
	}
	
	@Autowired
	public void setNewsDAO(NewsDAO newsDAO) {
		this.newsDAO = newsDAO;
	}

	@RequestMapping("/save")
	public String salvar() {
		News newsInsert = new News(5l,"teste5","lelelelelel");
		getNewsDAO().save(newsInsert);
		return "index";
	}
}
