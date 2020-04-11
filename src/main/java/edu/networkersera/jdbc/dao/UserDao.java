package edu.networkersera.jdbc.dao;

import edu.networkersera.model.User;

public interface UserDao {
	
	int register(User user, int userRoleId);
	User findByName(String userName, String userPassword);
}
