package com.iCoding.sevlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iCoding.domain.Barrage;
import com.iCoding.service.BarrageService;
import com.iCoding.service.impl.BarrageServiceImpl;
import com.google.gson.Gson;

@WebServlet("/getlishidanmuServlet")
public class GetlishidanmuServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		BarrageService bs = new BarrageServiceImpl();
		
		List<Barrage> barrage = bs.barrageget();
		
		
		System.out.println(barrage);
		
		Gson gson = new Gson();
		String bg = gson.toJson(barrage);
		
		response.setCharacterEncoding("utf-8");
		
		response.getWriter().write(bg);
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
