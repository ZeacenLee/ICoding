package com.iCoding.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.iCoding.dao.UserDao;
import com.iCoding.domain.User;
import com.iCoding.util.JDBCUtil;

public class UserDaoImpl implements UserDao{

	
	//用户登录
	@Override
	public User loginUser(User user) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConnection();
			
			String sql = "select * from user where username = ? and password = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			rs = ps.executeQuery();
			
			User loginUser = null;
			
			while(rs.next()) {
				loginUser = new User();
				loginUser.setUid(rs.getInt(1));
				loginUser.setUsername(rs.getString(2));
			}
			return loginUser;
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				JDBCUtil.closeConnection(rs, ps, conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return null;
	}

	
	
	//�?查用户是否存�?
	@Override
	public boolean checkUser(User user) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select count(1) from user where username = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			rs = ps.executeQuery();
			rs.next();
			int count = rs.getInt(1);
			if(count>0) {
				return false;
			}else {
				return true;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				JDBCUtil.closeConnection(rs, ps, conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}


	
	
	//用户注册
	@Override
	public boolean registerUser(User user) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = JDBCUtil.getConnection();
			//通过连接对象去封装sql语句
			String sql = "insert into user values(null,?,?,?,?,null,1)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2,user.getPassword());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getName());
			System.out.println(user);
			int result = ps.executeUpdate();
			if(result == 1 ) {
				return true;
			}else {
				return false;
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				JDBCUtil.closeConnection(ps, conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		return false;
	}
	
}
