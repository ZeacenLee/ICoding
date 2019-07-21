package com.iCoding.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.iCoding.dao.CodeDao;
import com.iCoding.domain.Code;
import com.iCoding.util.JDBCUtil;

public class CodeDaoImpl implements CodeDao{

	@Override
	public boolean saveCode(Code code) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "insert into codes values(?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, code.getQid());
			ps.setString(2,code.getQuestionTitle());
			ps.setString(3,code.getCode());
			ps.setString(4, code.getCodeType());
			ps.setInt(5,code.getUid());
			
			int result = ps.executeUpdate();
			if(result==1) return true;
			else return false;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			try {
				JDBCUtil.closeConnection(ps, conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	
	@Override
	public boolean haveTitle(Code code) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select count(*) from codes where questionTitle = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, code.getQuestionTitle());
			rs = ps.executeQuery();
			rs.next();
			
			int count = rs.getInt(1);
			if(count>0)
			{
				return true;
			}
			else
			{
				return false;
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
		
		
		return true;
	}
	@Override
	public boolean haveTitleAndHaveCode(Code code) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select count(*) from codes where questionTitle = ? and mycode = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, code.getQuestionTitle());
			ps.setString(2, code.getCode());
			rs = ps.executeQuery();
			rs.next();
			System.out.println(rs.toString());
			int count = rs.getInt(1);
			if(count>0)
			{
				return true;
			}
			else
			{
				return false;
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
		
		
		return true;
	}
	@Override
	public boolean haveTitleAndHaveCodeAndHaveUser(Code code) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select count(*) from codes where questionTitle = ? and mycode = ? and uid = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, code.getQuestionTitle());
			ps.setString(2, code.getCode());
			ps.setInt(3, code.getUid());
			rs = ps.executeQuery();
			rs.next();
			System.out.println(rs.toString());
			int count = rs.getInt(1);
			if(count>0)
			{
				return true;
			}
			else
			{
				return false;
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
		
		
		return true;
	}

	@Override
	public boolean haveTitleAndHaveUser(Code code) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select count(*) from codes where questionTitle = ? and uid = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, code.getQuestionTitle());
			ps.setInt(2, code.getUid());
			rs = ps.executeQuery();
			rs.next();
			System.out.println(rs.toString());
			int count = rs.getInt(1);
			if(count>0)
			{
				return true;
			}
			else
			{
				return false;
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
		
		
		return true;
	}

	@Override
	public boolean updateCode(Code code) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "update codes set mycode = ?  where questionTitle = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, code.getCode());
			ps.setString(2,code.getQuestionTitle());
			
			int result = ps.executeUpdate();
			if(result==1) return true;
			else return false;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
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
