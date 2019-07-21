package com.iCoding.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.iCoding.dao.BarrageDao;
import com.iCoding.domain.Barrage;
import com.iCoding.domain.User;
import com.iCoding.service.BarrageService;
import com.iCoding.service.impl.BarrageServiceImpl;
import com.iCoding.util.JDBCUtil;

public class BarrageDaoImpl implements BarrageDao{

	@Override
	public Map<String,String> saveBarragee(Barrage barragee) {
		Connection conn = null;
		PreparedStatement ps = null;
		Map<String,String> map = null;
		try {
			
			conn = JDBCUtil.getConnection();
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			String format = sdf.format(date);
			
			//通过连接对象去封装sql语句
			String sql = "insert into barrage values(null,?,?,?);";
			ps = conn.prepareStatement(sql);
			ps.setString(1, barragee.getBarrage());
			ps.setString(2, format);
			ps.setString(3, barragee.getBguser());
			
			ps.executeUpdate();
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
		return map;
		
	}

	@Override
	public List<Barrage> getBarragee() {
		Connection conn = null;
	    PreparedStatement ps = null;
		ResultSet rs = null;
		  
	               List<Barrage> barragees = new ArrayList();
		                try {
		                        conn = JDBCUtil.getConnection();
		                       String sql = "select * from barrage;";
		                       ps = conn.prepareStatement(sql);
		                       rs = ps.executeQuery();
		                       while(rs.next()) {
		                    	   Barrage barragee = new Barrage();
		                               barragee.setBarrage(rs.getString(2));
		                               barragee.setDate(rs.getString(3));
		                               barragee.setBguser(rs.getString(4));
		                               barragees.add(barragee);
		                             
		                        }
		                        return barragees;
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

	@Override
	public List<Barrage> getmyBarragee(String username) {
		Connection conn = null;
	    PreparedStatement ps = null;
		ResultSet rs = null;
		
		BarrageService bgs = new BarrageServiceImpl();
			
		         
	               List<Barrage> barragees = new ArrayList();
		                try {
		                        conn = JDBCUtil.getConnection();
		                       String sql = "select * from barrage  where  bguser = ?;";
		                       ps = conn.prepareStatement(sql);
		                       
		                       ps.setString(1,username);
		                       
		                       rs = ps.executeQuery();
		                       while(rs.next()) {
		                    	   Barrage barragee = new Barrage();
		                               barragee.setBarrage(rs.getString(2));
		                               barragee.setDate(rs.getString(3));
		                               barragee.setBguser(rs.getString(4));
		                               barragees.add(barragee);
		                             
		                        }
		                        return barragees;
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



	


}
