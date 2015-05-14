package br.com.thiagoft.springframeworkmvctiles.interfaces.dao;

import java.util.List;

public interface BaseDAO<T> {
	
	public void save(T obj);
	public void remove(T obj);
	public List<T> list();
	
}
