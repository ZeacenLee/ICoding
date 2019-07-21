package com.iCoding.domain;

public class Barrage {
   
	@Override
	public String toString() {
		return "Barrage [barrage=" + barrage + ", date=" + date + ", bguser=" + bguser + "]";
	}

	private String barrage;
    private String date;
    private String bguser;
    
    
    
    
    
	public String getBguser() {
		return bguser;
	}

	public void setBguser(String bguser) {
		this.bguser = bguser;
	}

	public String getBarrage() {
		return barrage;
	}

	public void setBarrage(String barrage) {
		this.barrage = barrage;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
	
    }
