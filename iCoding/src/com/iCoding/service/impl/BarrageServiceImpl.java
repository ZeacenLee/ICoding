package com.iCoding.service.impl;

import java.util.List;
import java.util.Map;

import com.iCoding.dao.BarrageDao;
import com.iCoding.dao.impl.BarrageDaoImpl;
import com.iCoding.domain.Barrage;
import com.iCoding.service.BarrageService;

public class BarrageServiceImpl implements BarrageService {
     BarrageDao bg = new BarrageDaoImpl();
	
	
     @Override
	public Map<String,String> savebarrage(Barrage barrage) {
		return bg.saveBarragee(barrage);
		
	}

	@Override
	public List<Barrage> barrageget() {
		
		List<Barrage> barragget = bg.getBarragee();
		
		return barragget;
	}

	@Override
	public List<Barrage> barragemyget(String username) {

		List<Barrage> barragget = bg.getmyBarragee(username);
		
		return barragget;
	}


	

	


}
