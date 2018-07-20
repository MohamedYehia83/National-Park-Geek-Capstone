package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcParkDao implements ParkDao{
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcParkDao(DataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}

	@Override
	public List<Park> getAllParks() {
		List<Park> allParks = new ArrayList();
		String selectAllParks = "SELECT * FROM park";
		SqlRowSet results = jdbcTemplate.queryForRowSet(selectAllParks);
		while (results.next()) {
			Park park = new Park();
			park.setParkCode(results.getString("parkcode").toLowerCase());

			park.setParkName(results.getString("parkname"));
			park.setState(results.getString("state"));
			park.setAcreage(results.getInt("acreage"));
			park.setElevationInFeet(results.getInt("elevationinfeet"));
			park.setMilesOfTrail(results.getFloat("milesoftrail"));
			park.setNumberOfCampsites(results.getInt("numberofcampsites"));
			park.setClimate(results.getString("climate"));
			park.setYearFounded(results.getInt("yearfounded"));
			park.setAnnualVisitorCount(results.getInt("annualvisitorcount"));
			park.setInspirationalQuote(results.getString("inspirationalquote"));
			park.setInspirationalQuoteSource(results.getString("inspirationalquotesource"));
			park.setParkDescription(results.getString("parkdescription"));
			park.setEntryFee(results.getInt("entryfee"));
			park.setNumberOfAnimalSpecies(results.getString("numberofanimalspecies"));
			allParks.add(park);
		}
		return allParks;
	}

	@Override
	public Park getSelectedPark(String parkCode) {
		Park selectedPark = new Park();
		parkCode = parkCode.toUpperCase();
		String getPark = "SELECT * FROM park WHERE parkCode = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(getPark, parkCode);
		while (results.next()) {
			selectedPark.setParkCode(results.getString("parkcode").toLowerCase());
			selectedPark.setParkName(results.getString("parkname"));
			selectedPark.setState(results.getString("state"));
			selectedPark.setAcreage(results.getInt("acreage"));
			selectedPark.setElevationInFeet(results.getInt("elevationinfeet"));
			selectedPark.setMilesOfTrail(results.getFloat("milesoftrail"));
			selectedPark.setNumberOfCampsites(results.getInt("numberofcampsites"));
			selectedPark.setClimate(results.getString("climate"));
			selectedPark.setYearFounded(results.getInt("yearfounded"));
			selectedPark.setAnnualVisitorCount(results.getInt("annualvisitorcount"));
			selectedPark.setInspirationalQuote(results.getString("inspirationalquote"));
			selectedPark.setInspirationalQuoteSource(results.getString("inspirationalquotesource"));
			selectedPark.setParkDescription(results.getString("parkdescription"));
			selectedPark.setEntryFee(results.getInt("entryfee"));
			selectedPark.setNumberOfAnimalSpecies(results.getString("numberofanimalspecies"));
		}
		return selectedPark;
	}

	

	@Override
	public Weather getDayOneWeather(String parkCode) {
		Weather dayOne = new Weather();
		parkCode = parkCode.toUpperCase();
		String selectDayOneWeather = "SELECT * FROM weather WHERE parkCode = ? AND fiveDayForecastValue = 1";
		SqlRowSet results = jdbcTemplate.queryForRowSet(selectDayOneWeather, parkCode);
		while (results.next()) {
			dayOne.setParkCode(results.getString("parkcode"));
			dayOne.setFiveDayForecastValue(results.getInt("fiveDayForecastValue"));
			if (results.getBoolean("farenheit")) {
				dayOne.setLow(results.getInt("low"));
				dayOne.setHigh(results.getInt("high"));
			}
			else {
				dayOne.setLow(convertToCelcius(results.getInt("low")));
				dayOne.setHigh(convertToCelcius(results.getInt("high")));
			}
			
			dayOne.setForecast(results.getString("forecast"));
		}
		return dayOne;
	}
	

	@Override
	public List<Weather> getWeather(String parkCode) {
		List<Weather> parkWeather = new ArrayList();
		parkCode = parkCode.toUpperCase();
		String selectAllWeather = "SELECT * FROM weather WHERE parkCode = ? AND fiveDayForecastValue > 1";
		SqlRowSet results = jdbcTemplate.queryForRowSet(selectAllWeather, parkCode);
		while (results.next()) {
			Weather weather = new Weather();			
			weather.setParkCode(results.getString("parkcode").toUpperCase());
			weather.setFiveDayForecastValue(results.getInt("fivedayforecastvalue"));
			if(results.getBoolean("farenheit")) {
				weather.setLow(results.getInt("low"));
				weather.setHigh(results.getInt("high"));
			}
			else {
				weather.setLow(convertToCelcius(results.getInt("low")));
				weather.setHigh(convertToCelcius(results.getInt("high")));
			}
			weather.setForecast(results.getString("forecast"));
			parkWeather.add(weather);
		}
		return parkWeather;
	}	
	
	@Override
	public List<Park> getFavorites() {
		List<Park> favoriteParks = new ArrayList();
		String selectTopFive = "SELECT park.*\n" + 
				"FROM park\n" + 
				"JOIN survey_result\n" + 
				"ON park.parkCode = survey_result.parkCode\n" + 
				"GROUP BY park.parkCode\n" + 
				"ORDER BY count(survey_result.parkCode) desc limit 5";
		SqlRowSet results = jdbcTemplate.queryForRowSet(selectTopFive);
		while (results.next()) {
			Park park = new Park();
			park.setParkCode(results.getString("parkcode").toLowerCase());
			park.setParkName(results.getString("parkname"));
			park.setState(results.getString("state"));
			park.setAcreage(results.getInt("acreage"));
			park.setElevationInFeet(results.getInt("elevationinfeet"));
			park.setMilesOfTrail(results.getFloat("milesoftrail"));
			park.setNumberOfCampsites(results.getInt("numberofcampsites"));
			park.setClimate(results.getString("climate"));
			park.setYearFounded(results.getInt("yearfounded"));
			park.setAnnualVisitorCount(results.getInt("annualvisitorcount"));
			park.setInspirationalQuote(results.getString("inspirationalquote"));
			park.setInspirationalQuoteSource(results.getString("inspirationalquotesource"));
			park.setParkDescription(results.getString("parkdescription"));
			park.setEntryFee(results.getInt("entryfee"));
			park.setNumberOfAnimalSpecies(results.getString("numberofanimalspecies"));
			favoriteParks.add(park);
		}
		return favoriteParks;
	}

	@Override
	public List<Integer> getCounts() {
		List<Integer> voteCounts = new ArrayList();
		String topFiveVoteCount = "SELECT count(park.parkCode) FROM park JOIN survey_result ON park.parkCode = survey_result.parkCode GROUP BY park.parkCode ORDER BY count(survey_result.parkCode) desc Limit 5"; 
		SqlRowSet results = jdbcTemplate.queryForRowSet(topFiveVoteCount);
		while (results.next()) {
			int holder = results.getInt("count");
			voteCounts.add(holder);
		}
		return voteCounts;
	}

	@Override
	public void changeFarenheit() {
		String check = "SELECT farenheit FROM weather LIMIT 1";
		SqlRowSet results = jdbcTemplate.queryForRowSet(check);
		boolean farenheit = true;
		while (results.next()) {
			farenheit = results.getBoolean("farenheit");
		}
		if (farenheit) {
			String updateToCelcius = "UPDATE weather SET farenheit = false";
			jdbcTemplate.update(updateToCelcius);
		}
		else {
			String updateToFarenheit = "UPDATE weather SET farenheit = true";
			jdbcTemplate.update(updateToFarenheit);
		}
	}
	
	public int convertToCelcius(int degrees) {
		degrees = degrees - 32;
		degrees = degrees * 5;
		degrees = degrees / 9;
		return degrees;
	}

	

}


