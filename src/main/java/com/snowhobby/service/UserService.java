package com.snowhobby.service;

import com.snowhobby.db.entity.User;

public interface UserService {

	User loginUser(User user);

	Integer registerUser(User u);

	String getPwd(User user);

	Integer updataPwd(User user);

}
