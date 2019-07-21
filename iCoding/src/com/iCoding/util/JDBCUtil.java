package com.iCoding.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {
	//�������
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		//����mysql������
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://127.0.0.1:3306/icoding1?useUnicode=true&characterEncoding=utf8";
		String user = "root";
		String password = "lzc1997";
		//���һ�����ݿ������
		Connection conn = DriverManager.getConnection(url, user, password);//ctrl+1�Զ����ɱ���
		return conn;
	}
	//�ر�����/
	public static void closeConnection(ResultSet rs,PreparedStatement ps,Connection conn) throws SQLException {
		rs.close();
		ps.close();
		conn.close();
	}
	public static void closeConnection(PreparedStatement ps,Connection conn) throws SQLException {
		ps.close();
		conn.close();
	}
}
