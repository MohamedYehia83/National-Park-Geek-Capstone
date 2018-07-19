package com.techelevator.npgeek;

import java.util.List;

public interface ParkDao {

	public List<Park> getAllParks();
	
	public Park getSelectedPark(String parkCode);
	

	public List<Weather> getWeather(String parkCode);

	public List<Park> getFavorites();
	
}
