package com.iCoding.sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.iCoding.domain.Page;
import com.iCoding.service.CodeService;
import com.iCoding.service.impl.CodeServiceImpl;


@WebServlet("/getPage")
public class GetPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("收到");
		request.setCharacterEncoding("utf-8");
		String currentPage = request.getParameter("currentPage");
		String type = request.getParameter("type");
		Page page = new Page();
		page.setCurPage(Integer.valueOf(currentPage));
		
		
		//把CurPage放到session中
		HttpSession session = request.getSession();
		session.setAttribute("curPage",currentPage);
		
		
		//调用servicce方法得到page数据
		CodeService codeService = new CodeServiceImpl();
		if("question".equals(type))page = codeService.getPage(page);
		if("answer".equals(type)) page = codeService.getAnsPage(page);
		
		session.setAttribute("maxpage",page.getPageNum());
		Gson gson = new Gson();
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(gson.toJson(page));
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
