package com.iCoding.sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iCoding.domain.Code;
import com.iCoding.service.GetQuestionByidService;
import com.iCoding.service.impl.GetQuestionByidServiceImpl;


@WebServlet("/getquestionByid")
public class getQuestionByidServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String type = request.getParameter("type");
		System.out.println(id);
		
		
		Code code = new Code();
		code.setQid(Integer.valueOf(id));
		
		
		
		if("question".equals(type))
		{
			GetQuestionByidService gs = new GetQuestionByidServiceImpl();
			code = gs.getQuestionByidService(code);
			request.setAttribute("qid", code.getQid());
			request.setAttribute("tit", code.getQuestionTitle());
			request.setAttribute("des", code.getQuestionDescription());
			request.setAttribute("format_in", code.getInputFormat());
			request.setAttribute("format_out", code.getOutputFormat());
			request.setAttribute("example_in", code.getInputSample());
			request.setAttribute("example_out", code.getOutputSample());
			request.getRequestDispatcher("questionEditor.jsp").forward(request, response);
		}
		if("answer".equals(type))
		{
			GetQuestionByidService gs = new GetQuestionByidServiceImpl();
			code = gs.getQuestionByidAnsService(code);
			request.setAttribute("qid", code.getQid());
			request.setAttribute("tit", code.getQuestionTitle());
			request.setAttribute("des", code.getQuestionDescription());
			request.setAttribute("code", code.getCode());
			request.setAttribute("author",code.getUsername());
			request.getRequestDispatcher("questionAns.jsp").forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
