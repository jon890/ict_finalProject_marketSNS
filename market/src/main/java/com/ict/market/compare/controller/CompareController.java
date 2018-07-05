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
		logger.info("market진입");
		compareService.marketPrice(model);
		return "marketPrice";
	}
	@RequestMapping(value="/mart.compare")
	public String martPrice(Model model){
		logger.info("mart진입");
		compareService.martPrice(model);
		return "martPrice";
	}
	@RequestMapping(value="/compare.compare")
	public String comparePrice(Model model){
		logger.info("compare진입");
		compareService.comparePrice(model);
		return "comparePrice";
	}
	
	/*시장 품목별 출력 컨트롤러*/
	@RequestMapping(value="/marketCorn.compare")
	public String marketCorn(Model model) {
		logger.info("marketCorn진입");
		compareService.marketCorn(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketMeat.compare")
	public String marketMeat(Model model) {
		logger.info("marketMeat진입");
		compareService.marketMeat(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketFish.compare")
	public String marketFish(Model model) {
		logger.info("marketFish진입");
		compareService.marketFish(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketFruit.compare")
	public String marketFruit(Model model) {
		logger.info("marketFruit진입");
		compareService.marketFruit(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketVege.compare")
	public String marketVege(Model model) {
		logger.info("marketVege진입");
		compareService.marketVege(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketGro.compare")
	public String marketGro(Model model) {
		logger.info("marketGro진입");
		compareService.marketGro(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketOil.compare")
	public String marketOil(Model model) {
		logger.info("marketOil진입");
		compareService.marketOil(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketCleaner.compare")
	public String marketCleaner(Model model) {
		logger.info("marketCleaner진입");
		compareService.marketCleaner(model);
		return "marketPrice";
	}
	/*마트 품목별 출력 컨트롤러*/
	@RequestMapping(value="/martCorn.compare")
	public String martCorn(Model model) {
		logger.info("martCorn진입");
		compareService.martCorn(model);
		return "martPrice";
	}
	@RequestMapping(value="/martMeat.compare")
	public String martMeat(Model model) {
		logger.info("martMeat진입");
		compareService.martMeat(model);
		return "martPrice";
	}
	@RequestMapping(value="/martFish.compare")
	public String martFish(Model model) {
		logger.info("markFish진입");
		compareService.martFish(model);
		return "martPrice";
	}
	@RequestMapping(value="/martFruit.compare")
	public String martFruit(Model model) {
		logger.info("marketFruit진입");
		compareService.martFruit(model);
		return "martPrice";
	}
	@RequestMapping(value="/martVege.compare")
	public String martVege(Model model) {
		logger.info("martVege진입");
		compareService.martVege(model);
		return "martPrice";
	}
	@RequestMapping(value="/martGro.compare")
	public String martGro(Model model) {
		logger.info("martGro진입");
		compareService.martGro(model);
		return "martPrice";
	}
	@RequestMapping(value="/martOil.compare")
	public String martOil(Model model) {
		logger.info("martOil진입");
		compareService.martOil(model);
		return "martPrice";
	}
	@RequestMapping(value="/martCleaner.compare")
	public String martCleaner(Model model) {
		logger.info("martCleaner진입");
		compareService.martCleaner(model);
		return "martPrice";
	}
	/*---------------시장 vs 마트 품목별 출력 컨트롤러-------------*/
	@RequestMapping(value="/compareCorn.compare")
	public String compareCorn(Model model) {
		logger.info("compareCorn진입");
		compareService.compareCorn(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareMeat.compare")
	public String compareMeat(Model model) {
		logger.info("compareMeat진입");
		compareService.compareMeat(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareFish.compare")
	public String compareFish(Model model) {
		logger.info("compareFish진입");
		compareService.compareFish(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareFruit.compare")
	public String compareFruit(Model model) {
		logger.info("compareFruit진입");
		compareService.compareFruit(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareVege.compare")
	public String compareVege(Model model) {
		logger.info("compareVege진입");
		compareService.compareVege(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareGro.compare")
	public String compareGro(Model model) {
		logger.info("compareGro진입");
		compareService.compareGro(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareOil.compare")
	public String compareOil(Model model) {
		logger.info("compareOil진입");
		compareService.compareOil(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareCleaner.compare")
	public String compareCleaner(Model model) {
		logger.info("compareCleaner진입");
		compareService.compareCleaner(model);
		return "comparePrice";
	}
	
	
	
	
	
}
