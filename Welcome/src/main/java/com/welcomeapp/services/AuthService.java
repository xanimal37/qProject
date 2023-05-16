package com.welcomeapp.services;

import com.welcomeapp.entities.User;

public interface AuthService {
	
	public User register(User user);
	public User getUserByUsername(String username);
}
