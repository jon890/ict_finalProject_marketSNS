package com.ict.market.compare.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ict.market.compare.dto.CompareDTO;
import com.ict.market.compare.service.CompareService;

@Controller
public class CompareController {

	@Autowired
	private CompareService compareService;
	
	@RequestMapping(value="/market.do")
	public List<CompareDTO> marketPrice(Model model){
		
		return compareService.marketPrice(model);
	}
}
