package com.iCoding.domain;

import java.util.ArrayList;
import java.util.List;

public class Page {
	private int curPage = 1;//��ǰҳ��
	private int queNum = 8;//һҳ�˸�����
	List<Code> queList = new ArrayList();
	List<CodeAuthor> queAutList = new ArrayList();
	private int pageNum;//ҳ��
	
	public List<CodeAuthor> getQueAutList() {
		return queAutList;
	}
	public void setQueAutList(List<CodeAuthor> queAutList) {
		this.queAutList = queAutList;
	}
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getQueNum() {
		return queNum;
	}
	public void setQueNum(int queNum) {
		this.queNum = queNum;
	}
	public List<Code> getQueList() {
		return queList;
	}
	public void setQueList(List<Code> queList) {
		this.queList = queList;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	
}
