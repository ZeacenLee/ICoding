package com.iCoding.sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.iCoding.domain.Page;
import com.iCoding.service.impl.SearchServiceImpl;


@WebServlet("/searchServlet")
public class SearchServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchContent = request.getParameter("searchContent");
		String curpage = request.getParameter("curpage");
		
		Page page = new Page();
		page.setCurPage(Integer.valueOf(curpage));
		SearchServiceImpl searchSevice = new SearchServiceImpl();
		page = searchSevice.searchService(searchContent, page);
		response.setCharacterEncoding("utf-8");
		Gson gson = new Gson();
		response.getWriter().write(gson.toJson(page));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
