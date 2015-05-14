package br.com.thiagoft.springframeworkmvctiles.dao;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.thiagoft.springframeworkmvctiles.entities.User;
import br.com.thiagoft.springframeworkmvctiles.interfaces.dao.UserDAO;

@Transactional(propagation=Propagation.SUPPORTS)
@Repository
public class UserDAOHibernate extends AbstractDAOHibernate<User> implements UserDAO {

	public User getUser(String login, String senha) {
		Query query = getSession().createQuery("from User usr where usr.login = ? and usr.senha = ?");
		query.setString(0, login);
		query.setString(1, senha);
		return (User) query.uniqueResult();	
	}

	protected Class getClazz() {
		return User.class;
	}

}
