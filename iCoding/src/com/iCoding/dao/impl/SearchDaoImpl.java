package com.iCoding.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.iCoding.dao.SearchDao;
import com.iCoding.domain.Code;
import com.iCoding.domain.Page;
import com.iCoding.util.JDBCUtil;


public class SearchDaoImpl implements SearchDao{

	@Override
	public Page searchQueDao(String SearchContent,Page page) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select * from questionbank where questionTitle like '%"+SearchContent+"%';";
			ps = conn.prepareStatement(sql);
			//ps.setString(1, SearchContent);
			rs = ps.executeQuery();
			
			
			for(int first = 1;rs.next();first++)
			{
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
				page.setQueNum(first);
			}
			int pagenum = 1;
			page.setPageNum(pagenum);
			
			return page;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
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
