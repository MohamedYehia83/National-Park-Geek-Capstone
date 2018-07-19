package com.techelevator.npgeek;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SurveyController {

	@Autowired
	private SurveyDao surveyDao;
	
	@RequestMapping(path="/survey", method=RequestMethod.GET)
	public String SurveryPage(ModelMap modelHolder) {
		modelHolder.put("parks", surveyDao.getAllParks());
		List<Survey> survey = surveyDao.getAllSurvey();
		modelHolder.put("survey", survey);
		return "survey";
	}
	
	@RequestMapping(path="/survey", method=RequestMethod.POST)
	public String addSurvey(@RequestParam String parkCode, @RequestParam String emailAddress, @RequestParam String state, @RequestParam String activityLevel, ModelMap modelHolder) {
		Survey surveyToSave = new Survey();
		parkCode = parkCode.toUpperCase();
		surveyToSave.setParkCode(parkCode);
		surveyToSave.setEmailAddress(emailAddress);
		surveyToSave.setState(state);
		surveyToSave.setActivityLevel(activityLevel);
		surveyDao.saveInput(surveyToSave);
		return "redirect:/";
	}
	
}
