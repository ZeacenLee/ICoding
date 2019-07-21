package com.iCoding.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.iCoding.dao.GetQuestionByidDao;
import com.iCoding.domain.Code;
import com.iCoding.util.JDBCUtil;


public class GetQuestionByidDaoImpl implements GetQuestionByidDao{

	@Override
	public Code getQuestionByidDao(Code code) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			
			conn = JDBCUtil.getConnection();
			String sql = "select * from questionbank where qid = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,code.getQid());
			rs = ps.executeQuery();
			rs.next();
			code.setQuestionTitle(rs.getString(2));
			code.setQuestionDescription(rs.getString(3));
			code.setInputFormat(rs.getString(4));
			code.setOutputFormat(rs.getString(5));
			code.setInputSample(rs.getString(6));
			code.setOutputSample(rs.getString(7));
			
			//code.setCode(rs.getString(8));
			//code.setCodeType(rs.getString(9));
			//code.setUid(rs.getInt(10));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				JDBCUtil.closeConnection(rs, ps, conn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return code;
	}

	@Override
	public Code getQuestionByidAnsDao(Code code) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			
			conn = JDBCUtil.getConnection();
			String sql = "select questionDescription from questionbank where qid = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,code.getQid());
			rs = ps.executeQuery();
			rs.next();
			code.setQuestionDescription(rs.getString(1));
			
			sql = "select * from codes where qid = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,code.getQid());
			rs = ps.executeQuery();
			rs.next();
			code.setQuestionTitle(rs.getString(2));
			code.setCode(rs.getString(3));
			code.setUid(rs.getInt(5));
			
			sql = "select *from codes inner join user on  codes.uid = `user`.id and codes.uid = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,code.getUid());
			rs = ps.executeQuery();
			rs.next();
			code.setUsername(rs.getString(7));
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				JDBCUtil.closeConnection(rs, ps, conn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return code;
	}

}
