package com.iCoding.service;

import com.iCoding.domain.Code;
import com.iCoding.domain.Page;

public interface CodeService {	
	public String judge(Code code);
	public Page getPage(Page page);
	public Page getAnsPage(Page page);
	public boolean saveCodeLocal(Code code);
	public void cmpCodeLocalCpp(Code code);
}
