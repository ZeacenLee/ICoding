package com.iCoding.service;

import java.util.List;
import java.util.Map;

import com.iCoding.domain.Barrage;

public interface BarrageService {
    public Map<String,String> savebarrage(Barrage barrage);
    public List<Barrage> barrageget();
    public List<Barrage> barragemyget(String username);
  
}
