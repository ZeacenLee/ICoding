package com.iCoding.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.iCoding.dao.GetPageDao;
import com.iCoding.domain.Code;
import com.iCoding.domain.CodeAuthor;
import com.iCoding.domain.Page;
import com.iCoding.util.JDBCUtil;


public class GetPageDaoImpl implements GetPageDao{

	@Override
	public Page getPage(Page page) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {	
			conn = JDBCUtil.getConnection();
			String sql = "select * from questionbank limit ?,?";
			ps = conn.prepareStatement(sql);
			int firstParam = (page.getCurPage()-1)*page.getQueNum();
			ps.setInt(1, firstParam);
			ps.setInt(2, page.getQueNum());
			rs = ps.executeQuery();
			//循环获取从Codes表中取到的数据
			while(rs.next()) {
				//每一条数据封装到code对象中
				Code code = new Code();
				code.setQid(rs.getInt(1));
				code.setQuestionTitle(rs.getString(2));
				code.setQuestionDescription(rs.getString(3));
				code.setInputFormat(rs.getString(4));
				code.setOutputFormat(rs.getString(5));
				code.setInputSample(rs.getString(6));
				code.setOutputSample(rs.getString(7));		
				
				//将封装好的数据塞入page对象用来存放产品数据的集合中
				List<Code> codeList = page.getQueList();
				codeList.add(code);
			}
			//获得Codes表的总数量,用来计算需要展示多少页码
			sql = "select count(1) from codes";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			int totalNum = rs.getInt(1);
			int pageNum = 1;
			if(totalNum<page.getQueNum()) {
				pageNum = 1;
			}else if(totalNum%page.getQueNum()==0) {
				pageNum = totalNum/page.getQueNum();
			}else if(totalNum%page.getQueNum()!=0) {
				pageNum = totalNum/page.getQueNum()+1;
			}
			page.setPageNum(pageNum);
			
			return page;
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				JDBCUtil.closeConnection(rs,ps, conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return page;
	}

	@Override
	public Page getAnsPage(Page page) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {	
			conn = JDBCUtil.getConnection();
			String sql = "select *from codes inner join user on  codes.uid = `user`.id limit ?,?";
			ps = conn.prepareStatement(sql);
			int firstParam = (page.getCurPage()-1)*page.getQueNum();
			ps.setInt(1, firstParam);
			ps.setInt(2, page.getQueNum());
			rs = ps.executeQuery();
			//循环获取从Codes表中取到的数据
			while(rs.next()) {
				//每一条数据封装到code对象中
				CodeAuthor codeAuthor = new CodeAuthor();
				codeAuthor.setQid(rs.getInt(1));
				codeAuthor.setQuestionTitle(rs.getString(2));
				codeAuthor.setUsername(rs.getString(7));
				
				//将封装好的数据塞入page对象用来存放产品数据的集合中
				List<CodeAuthor> codeList = page.getQueAutList();
				codeList.add(codeAuthor);
			}
			//获得Codes表的总数量,用来计算需要展示多少页码
			sql = "select *from codes inner join user on  codes.uid = `user`.id ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			int totalNum = 1;
			for(;rs.next();totalNum++);
			
			int pageNum = 1;
			if(totalNum<page.getQueNum()) {
				pageNum = 1;
			}else if(totalNum%page.getQueNum()==0) {
				pageNum = totalNum/page.getQueNum();
			}else if(totalNum%page.getQueNum()!=0) {
				pageNum = totalNum/page.getQueNum()+1;
			}
			page.setPageNum(pageNum);
			
			return page;
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				JDBCUtil.closeConnection(rs,ps, conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return page;
	}
	
	
}
