
package com.iCoding.sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iCoding.domain.User;
import com.iCoding.service.UserService;
import com.iCoding.service.impl.UserServiceImpl;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("登录!");
		User user = new User();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println(username+"..."+password);
		
		user.setUsername(username);
		user.setPassword(password);
		
		UserService us = new UserServiceImpl();
		User loginUser = us.loginUser(user);
		
		if(loginUser == null) {
			System.out.println("登录失败");
			request.getRequestDispatcher("login.html").forward(request, response);
		}else {
			
			//登录成功�?,将用户数据存放到session这个作用域中
			HttpSession session = request.getSession();
			session.setAttribute("user", loginUser);
			
			System.out.println("登录成功");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
