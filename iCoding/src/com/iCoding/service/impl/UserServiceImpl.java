package com.iCoding.service.impl;

import com.iCoding.dao.UserDao;
import com.iCoding.dao.impl.UserDaoImpl;
import com.iCoding.domain.User;
import com.iCoding.service.UserService;

public class UserServiceImpl implements UserService{

	UserDao ud = new UserDaoImpl();
	@Override
	public User loginUser(User user) {
		
		User loginUser = ud.loginUser(user);
		return loginUser;
	}
	
	
	
	@Override
	public boolean registerUser(User user) {
		boolean hasUser = ud.checkUser(user);
		
		if(hasUser) {
			//调用dao层的方法,把user封装好的数据存到数据库中		
			boolean result = ud.registerUser(user);
			return result;			
		}else {
			return false;
		}
	}

	
}
