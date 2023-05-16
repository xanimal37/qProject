package com.welcomeapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.welcomeapp.entities.User;

public interface UserRepository extends JpaRepository<User, Integer>{

	User findByUsername(String username);
}
