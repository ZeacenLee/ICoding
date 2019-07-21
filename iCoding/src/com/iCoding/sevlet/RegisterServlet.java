package com.iCoding.sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iCoding.domain.User;
import com.iCoding.service.UserService;
import com.iCoding.service.impl.UserServiceImpl;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//对request中封装的参数设置编码
		request.setCharacterEncoding("utf-8");
		//获取前端传来的数�?,并封装到实体类User的对象中
		User user = new User();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setEmail(request.getParameter("email"));
		user.setName(request.getParameter("name"));
		System.out.println(user);
		
		
		String rePassword = request.getParameter("repassword");
		System.out.println(rePassword);
		if(user.getPassword().equals(rePassword)) {
			//调用service层的方法来处理用户注册的业务
			UserService loginService = new UserServiceImpl();
			boolean result = loginService.registerUser(user);
			if(result==true) {
				System.out.println("注册成功!");
				request.getRequestDispatcher("login.html").forward(request, response);
			}else {
				System.out.println("注册失败!");
				request.getRequestDispatcher("register.html").forward(request, response);
			}
		}else {
			//密码不一�?,注册不成�?,再次跳转到注册的页面
			System.out.println("注册失败�?!密码不一�?!");
			request.getRequestDispatcher("register.html").forward(request, response);	
		}
		
	}
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
