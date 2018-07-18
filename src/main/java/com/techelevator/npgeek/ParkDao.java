package com.techelevator.npgeek;

import java.util.List;

public interface ParkDao {

	public List<Park> getAllParks();
	
	public Park getSelectedPark(String parkCode);
	
	public void saveInput(Survey survey);

	public List<Weather> getWeather(String parkCode);
		
	
}
