package br.com.thiagoft.springframeworkmvctiles.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.thiagoft.springframeworkmvctiles.interfaces.dao.BaseDAO;

@Transactional(propagation=Propagation.SUPPORTS)
public abstract class AbstractDAOHibernate<T> implements BaseDAO<T> {

	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	protected abstract Class getClazz();

	public void save(T obj) {
		getSession().saveOrUpdate(obj);
	}

	public void remove(T obj) {
		// TODO Auto-generated method stub
	}

	@SuppressWarnings("unchecked")
	public List<T> list() {
		return (List<T>) getSession().createCriteria(getClazz()).list();
	}
	
}
