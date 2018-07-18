package com.techelevator.npgeek;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ParkController {
	
	@Autowired
	private ParkDao parkDao;
	
	@RequestMapping(path= "/", method=RequestMethod.GET)
	public String HomePage(ModelMap modelHolder) {
		modelHolder.put("parks", parkDao.getAllParks());
		return "home";
	}
	
	
	
	@RequestMapping(path="/details", method=RequestMethod.GET)
	public String DetailPage(String parkCode, ModelMap modelHolder) {
		Park parks = parkDao.getSelectedPark(parkCode);
		modelHolder.put("park", parks);
		modelHolder.put("weather", parkDao.getWeather(parkCode));
		return "details";
	}
	
	@RequestMapping(path="/favorite", method=RequestMethod.GET)
	public String FavoritePage(ModelMap modelHolder) {
		modelHolder.put("favparks", parkDao.getFavorites());
		return "favorite";
	}
	
	
}
