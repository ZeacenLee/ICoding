package com.iCoding.service.impl;

import com.iCoding.dao.impl.SearchDaoImpl;
import com.iCoding.domain.Page;
import com.iCoding.service.SearchService;

public class SearchServiceImpl implements SearchService{

	@Override
	public Page searchService(String searchContent , Page page) {
		SearchDaoImpl searchDao = new SearchDaoImpl();
		return searchDao.searchQueDao(searchContent, page);
	}

}
