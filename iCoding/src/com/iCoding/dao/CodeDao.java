package com.iCoding.dao;

import com.iCoding.domain.Code;

public interface CodeDao {
	public boolean saveCode(Code code);
	public boolean updateCode(Code code);
	public boolean haveTitle(Code code);
	public boolean haveTitleAndHaveCode(Code code);
	public boolean haveTitleAndHaveUser(Code code);
	public boolean haveTitleAndHaveCodeAndHaveUser(Code code);
	
}
