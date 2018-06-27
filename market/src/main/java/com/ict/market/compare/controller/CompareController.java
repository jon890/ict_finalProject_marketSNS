package com.ict.market.compare.controller;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ict.market.compare.service.CompareService;

@Controller
public class CompareController {

	@Autowired
	private CompareService compareService;
	
	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(CompareController.class);
	
	@RequestMapping(value="/market.compare")
	public String marketPrice(Model model){
		logger.info("compare¡¯¿‘");
		compareService.marketPrice(model);
		return "comparePrice";
	}
}
