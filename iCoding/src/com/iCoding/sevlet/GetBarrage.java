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


@WebServlet("/getBarrage")
public class GetBarrage extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	             System.out.println("前端访问getBarrage?");
	             String Bguser = request.getParameter("Bguser");
	             String retext = request.getParameter("tet");
	             //String barragetext = request.getParameter("barragetext");
	             //System.out.println(Bguser+"...."+retext);
	             
	             
	             
	             
	             
	             
	             Barrage bg = new Barrage();
	             bg.setBarrage(retext);
	             bg.setBguser(Bguser);
	             
	             BarrageService bs = new BarrageServiceImpl();
	            
                 bs.savebarrage(bg);
	             
	             
	            Gson gson = new Gson();
	            
	            String un =gson.toJson(retext);
	            response.setCharacterEncoding("utf-8");
	            response.getWriter().write(un);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
