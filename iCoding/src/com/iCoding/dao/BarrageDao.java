package com.iCoding.dao;

import java.util.List;
import java.util.Map;

import com.iCoding.domain.Barrage;

public interface BarrageDao {
     public Map<String,String> saveBarragee(Barrage barragee);
     public List<Barrage> getBarragee();
     public List<Barrage> getmyBarragee(String username);
 
    // public void getmycurrentusername();
}
