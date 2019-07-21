package com.iCoding.dao;

import com.iCoding.domain.User;

public interface UserDao {
	
	//通过用户名密码检查数据库中是否存在该用户,存在则返回用户数�?,不存在则返回null
	public User loginUser(User user);
	
	//�?查用户是否存�?
	public boolean checkUser(User user);
	
	//用户注册
	public boolean registerUser(User user);
	
}
