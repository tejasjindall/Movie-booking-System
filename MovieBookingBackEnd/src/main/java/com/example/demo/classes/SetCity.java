package com.example.demo.classes;

public class SetCity {

	String cityname;

	public String getCityname() {
		return cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

	public SetCity(String cityname) {
		super();
		this.cityname = cityname;
	}

	public SetCity() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "SetCity [cityname=" + cityname + "]";
	}
	
	
	
}
