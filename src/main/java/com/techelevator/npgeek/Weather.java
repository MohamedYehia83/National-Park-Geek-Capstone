package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;

public class Weather {

	private String parkCode;
	private int fiveDayForecastValue;
	private int low;
	private int high;
	private String forecast;
<<<<<<< HEAD
	private List<String> advice;
	private int	day;
	
	
	
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
=======
	private boolean farenheit;
	
	public boolean isFarenheit() {
		return farenheit;
	}
	public void setFarenheit(boolean farenheit) {
		this.farenheit = farenheit;
>>>>>>> 67738f29d71f0f8cba3eb93524805af48d305be1
	}
	public String getParkCode() {
		return parkCode;
	}
	public void setParkCode(String parkCode) {
		this.parkCode = parkCode;
	}
	public int getFiveDayForecastValue() {
		return fiveDayForecastValue;
	}
	public void setFiveDayForecastValue(int fiveDayForecastValue) {
		this.fiveDayForecastValue = fiveDayForecastValue;
	}
	public int getLow() {
		return low;
	}
	public void setLow(int low) {
		this.low = low;
	}
	public int getHigh() {
		return high;
	}
	public void setHigh(int high) {
		this.high = high;
	}
	public String getForecast() {
		return forecast;
	}
	public void setForecast(String forecast) {
		this.forecast = forecast;
	}
	
public List<String> createAdvice() {
		
		List<String> advice = new ArrayList<>();
		
		switch(forecast) {
			case "snow":
				advice.add("&#9731; Pack snowshoes");
				break;
			case "rain":
				advice.add("&#9730; Pack Rain Gear and waterproof shoes");
 				break;
			case "sunny":
				advice.add("&#9728; Pack Sunblock to avoid harmful sun rays");
				break;
			case "thunderstorms":
				advice.add("&#9729; Seek shelter and avoid hiking on exposed ridges or mountaintops");
				break;
				
		}

		if (high > 75 ) {
			advice.add("&#9888; Bring an extra gallon of water");
		}
 
		if (low < 20) {
			advice.add("&#9888; Frostbite warning in effect today");			
		}

		if (high - low > 20) {
			advice.add("&#9888; Wear breathable layers");						
		}

		return advice;
		
	}

	public List<String> getAdvice() {
		return advice;
	}
	public void setAdvice(List<String> advice) {
		this.advice = advice;
	}

}
