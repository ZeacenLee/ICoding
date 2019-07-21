package com.iCoding.service.impl;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import com.iCoding.dao.impl.CodeDaoImpl;
import com.iCoding.dao.impl.GetPageDaoImpl;
import com.iCoding.domain.Code;
import com.iCoding.domain.Page;
import com.iCoding.service.CodeService;

public class CodeServiceImpl implements CodeService{
	
	public String judge(Code code)
	{
		CodeDaoImpl codeDao = new CodeDaoImpl();
		if(codeDao.haveTitle(code))
		{
			if(codeDao.haveTitleAndHaveCode(code))
			{
				if(codeDao.haveTitleAndHaveCodeAndHaveUser(code))
				{
					return "重复提交代码";
				}
				else
				{
					codeDao.saveCode(code);
					
					return "提交代码成功";
				}
			}
			else
			{
				if(codeDao.haveTitleAndHaveUser(code))
				{
					codeDao.updateCode(code);
					return "修改代码成功，覆盖数据";
				}
				else
				{
					codeDao.saveCode(code);
					return "提交代码成功";
				}
			}
		}
		else
		{
			codeDao.saveCode(code);
			return "提交代码成功";
		}
	}

	@Override
	public Page getPage(Page page) {
		//调用Dao层得到数据
		GetPageDaoImpl getCodeDaoImpl = new GetPageDaoImpl();
		return getCodeDaoImpl.getPage(page);
	}
	
	@Override
	public boolean saveCodeLocal(Code code) {
		System.out.println("saveCodeLocal...");
		String isfile = "F:\\workspace\\iCoding\\WebContent\\codes\\"+
						code.getUid()+"\\"+code.getQid()+"."+
						code.getCodeType();
		try {
			FileWriter file = new FileWriter(isfile);
			file.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		try {
			FileWriter fileWriter = new FileWriter(isfile,true);
			fileWriter.write(code.getCode());
			fileWriter.flush();
			fileWriter.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		File fileMap = new File(isfile);
		if(fileMap.exists()&&fileMap.isFile()&&fileMap.length()!=0)
		{
			return true;
		}
		else return false;
		
	}

	@Override
	public void cmpCodeLocalCpp(Code code) {
		// TODO Auto-generated method stub
		Process process = null;
		try {
			String dir = "F:\\workspace\\iCoding\\WebContent\\codes\\"+code.getUid();
			process = Runtime.getRuntime().exec("gcc -o "+code.getQid()+" "+code.getQid()+".cpp",null,new File(dir));
			Thread.sleep(500);
			process = Runtime.getRuntime().exec(dir+"\\"+code.getQid()+".exe");
			process.waitFor();
			InputStream rs = process.getInputStream();
			BufferedReader br = new BufferedReader(new InputStreamReader(rs));
			String temp = null;
			while((temp = br.readLine())!=null)
			{
				System.out.println(temp);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public Page getAnsPage(Page page) {
		// TODO Auto-generated method stub
		GetPageDaoImpl getCodeDaoImpl = new GetPageDaoImpl();
		return getCodeDaoImpl.getAnsPage(page);
	}
	

}
