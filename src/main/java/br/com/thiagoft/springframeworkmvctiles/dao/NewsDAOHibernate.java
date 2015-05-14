package br.com.thiagoft.springframeworkmvctiles.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.thiagoft.springframeworkmvctiles.entities.News;
import br.com.thiagoft.springframeworkmvctiles.interfaces.dao.NewsDAO;

@Transactional(propagation=Propagation.SUPPORTS)
@Repository
public class NewsDAOHibernate extends AbstractDAOHibernate<News> implements NewsDAO {

	protected Class getClazz() {
		return News.class;
	}

}
