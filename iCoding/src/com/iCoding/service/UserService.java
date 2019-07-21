package com.iCoding.service;

import com.iCoding.domain.User;

public interface UserService {
	
	//用户登录
	public User loginUser(User user);
	
	//用户注册
	public boolean registerUser(User user);
}
