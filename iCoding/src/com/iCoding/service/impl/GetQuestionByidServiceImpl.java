package com.iCoding.service.impl;

import com.iCoding.dao.GetQuestionByidDao;
import com.iCoding.dao.impl.GetQuestionByidDaoImpl;
import com.iCoding.domain.Code;
import com.iCoding.service.GetQuestionByidService;

public class GetQuestionByidServiceImpl implements GetQuestionByidService {

	public Code getQuestionByidService(Code code) {
		GetQuestionByidDao gd = new GetQuestionByidDaoImpl();
		Code c = gd.getQuestionByidDao(code);
		return c;
	}
	public Code getQuestionByidAnsService(Code code)
	{
		GetQuestionByidDao gd = new GetQuestionByidDaoImpl();
		Code c = gd.getQuestionByidAnsDao(code);
		return c;
	}
	
}
