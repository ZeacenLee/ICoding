package com.iCoding.sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.iCoding.domain.Code;
import com.iCoding.service.impl.CodeServiceImpl;


@WebServlet("/SaveCode")
public class SaveCodeServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("收到");
		request.setCharacterEncoding("utf-8");
		
		
		
		//获取前端数据，封装到实体类SaveCode中
		Code saveCode = new Code();
		String qidStr = request.getParameter("qid");
		saveCode.setQid(Integer.valueOf(qidStr));
		saveCode.setQuestionTitle(request.getParameter("questionTitle"));
		saveCode.setCode(request.getParameter("code"));
		saveCode.setCodeType(request.getParameter("codeType"));
		String uidStr = request.getParameter("uid");
		int uid = Integer.valueOf(uidStr);
		saveCode.setUid(uid);
		
		
		//调用service层的方法
		Gson gson = new Gson();
		CodeServiceImpl codeServiceImpl = new CodeServiceImpl();
		response.setCharacterEncoding("utf-8");
		String result =  codeServiceImpl.judge(saveCode);
		response.getWriter().write(gson.toJson(result));
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
