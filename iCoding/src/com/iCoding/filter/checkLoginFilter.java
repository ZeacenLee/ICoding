package com.iCoding.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.iCoding.domain.User;


@WebFilter("/SaveCode")
public class checkLoginFilter implements Filter {

	public void destroy() {	
		
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest  httpServletRequest = (HttpServletRequest)request;
		HttpSession session = httpServletRequest.getSession();
		
		User user = (User)session.getAttribute("user");
		if(user == null)
		{
			Gson gson = new Gson();
			String json = gson.toJson("noUser");
			response.getWriter().write(json);
			//request.getRequestDispatcher("/login.html").forward(request, response);
		}
		else
		{
			chain.doFilter(request, response);
		}
		
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}
	
	

}
