package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcSurveyDao implements SurveyDao{

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcSurveyDao(DataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}
	@Override
	public void saveInput(Survey survey) {
		
		String sqlInsertSurvey = "INSERT INTO survey(parkcode, emailaddress, state, activitylevel) VALUES (?,?,?,?) RETURNING surveyid";
		String surveyId = jdbcTemplate.queryForObject(sqlInsertSurvey, String.class, survey.getParkCode(), survey.getEmailAddress(), survey.getState(), survey.getActivityLevel());
		int surveyIdInt = Integer.parseInt(surveyId);
		survey.setSurveyId(surveyIdInt);
	}
	
	@Override
	public List<Survey> getAllSurvey() {
		List<Survey> parkSurvey = new ArrayList();
		String selectAllSurvey = "SELECT survey_result.* FROM survey_result " + 
								"JOIN weather ON survey_result.parkCode = weather.parkCode " + 
								"JOIN park ON weather.parkCode = park.parkCode " +
								"WHERE survey_result.parkCode = 'ENP' ";
		SqlRowSet results = jdbcTemplate.queryForRowSet(selectAllSurvey);		
		while (results.next()) {
			Survey survey = new Survey();
			survey.setParkCode(results.getString("parkcode").toLowerCase());
			survey.setSurveyId(results.getInt("surveyid"));
			survey.setEmailAddress(results.getString("emailaddress"));
			survey.setState(results.getString("state"));
			survey.setActivityLevel(results.getString("activitylevel"));
			parkSurvey.add(survey);
		
	}
		return parkSurvey;
	}
	
}

