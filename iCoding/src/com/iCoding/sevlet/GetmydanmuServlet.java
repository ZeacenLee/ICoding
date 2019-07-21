package com.iCoding.sevlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.iCoding.dao.BarrageDao;
import com.iCoding.dao.impl.BarrageDaoImpl;
import com.iCoding.domain.Barrage;
import com.iCoding.domain.User;
import com.iCoding.service.BarrageService;
import com.iCoding.service.impl.BarrageServiceImpl;


@WebServlet("/getmydanmuServlet")
public class GetmydanmuServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
		BarrageService bs = new BarrageServiceImpl();
		
		HttpServletRequest  httpServletRequest = (HttpServletRequest)request;
		HttpSession session = httpServletRequest.getSession();
		User user = (User)session.getAttribute("user");
		
		String username = user.getUsername();
		System.out.println(username);
		
		
		
		
		List<Barrage> barrage = new ArrayList<Barrage>();
		barrage = bs.barragemyget(username);
		
		
		
		
		
		Gson gson = new Gson();
		
		response.setCharacterEncoding("utf-8");
		
		response.getWriter().write(gson.toJson(barrage));
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
