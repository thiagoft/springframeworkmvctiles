package br.com.thiagoft.springframeworkmvctiles.interfaces.dao;

import br.com.thiagoft.springframeworkmvctiles.entities.User;

public interface UserDAO extends BaseDAO<User> {
	
	public User getUser(String login, String senha);
	
}
