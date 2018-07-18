package com.techelevator.npgeek;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ParkController {
	
	@RequestMapping(path= {"/"}, method=RequestMethod.GET)
	public String HomePage() {
		
		return "home";
		
	}
}
