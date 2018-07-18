package com.techelevator.npgeek;

import java.util.List;

public interface SurveyDao {
	
	public void saveInput(Survey survey);

	public List<Survey> getAllSurvey();

}
