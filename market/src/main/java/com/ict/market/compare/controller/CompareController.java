package com.ict.market.compare.controller;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ict.market.compare.service.CompareService;

@Controller
public class CompareController {

	@Autowired
	private CompareService compareService;
	
	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(CompareController.class);
	
	@RequestMapping(value="/market.compare")
	public String marketPrice(Model model,@RequestParam("weekends")String weekends){
		model.addAttribute("weekends",weekends);
		compareService.marketPrice(model,weekends);
		return "marketPrice";
	}
	@RequestMapping(value="/marketAgo.compare")
	public String marketAgo(Model model,@RequestParam("weekends")String weekends) {
		model.addAttribute("weekends",weekends);
		compareService.marketAgo(model,weekends);
		return "marketPrice";
	}
	
	@RequestMapping(value="/mart.compare")
	public String martPrice(Model model,@RequestParam("weekends")String weekends){
		model.addAttribute("weekends",weekends);
		compareService.martPrice(model,weekends);
		return "martPrice";
	}
	@RequestMapping(value="/martAgo.compare")
	public String martAgo(Model model,@RequestParam("weekends")String weekends){
		model.addAttribute("weekends",weekends);
		compareService.martAgo(model,weekends);
		return "martPrice";
	}
	
	@RequestMapping(value="/compare.compare")
	public String comparePrice(Model model,@RequestParam("weekends")String weekends){
		model.addAttribute("weekends",weekends);
		compareService.comparePrice(model,weekends);
		return "comparePrice";
	}
	@RequestMapping(value="/compareAgo.compare")
	public String compareAgo(Model model,@RequestParam("weekends")String weekends){
		model.addAttribute("weekends",weekends);
		compareService.compareAgo(model,weekends);
		return "comparePrice";
	}
	
	/*시장 품목별 출력 컨트롤러*/
	@RequestMapping(value="/marketCorn.compare")
	public String marketCorn(Model model,@RequestParam("weekends")String weekends) {
		logger.info("marketCorn진입");
		model.addAttribute("weekends",weekends);
		compareService.marketCorn(model,weekends);
		return "marketPrice";
	}
	@RequestMapping(value="/marketMeat.compare")
	public String marketMeat(Model model,@RequestParam("weekends")String weekends) {
		logger.info("marketMeat진입");
		model.addAttribute("weekends",weekends);
		compareService.marketMeat(model,weekends);
		return "marketPrice";
	}
	@RequestMapping(value="/marketFish.compare")
	public String marketFish(Model model,@RequestParam("weekends")String weekends) {
		logger.info("marketFish진입");
		model.addAttribute("weekends",weekends);
		compareService.marketFish(model,weekends);
		return "marketPrice";
	}
	@RequestMapping(value="/marketFruit.compare")
	public String marketFruit(Model model,@RequestParam("weekends")String weekends) {
		logger.info("marketFruit진입");
		model.addAttribute("weekends",weekends);
		compareService.marketFruit(model,weekends);
		return "marketPrice";
	}
	@RequestMapping(value="/marketVege.compare")
	public String marketVege(Model model,@RequestParam("weekends")String weekends) {
		logger.info("marketVege진입");
		model.addAttribute("weekends",weekends);
		compareService.marketVege(model,weekends);
		return "marketPrice";
	}
	@RequestMapping(value="/marketGro.compare")
	public String marketGro(Model model,@RequestParam("weekends")String weekends) {
		logger.info("marketGro진입");
		model.addAttribute("weekends",weekends);
		compareService.marketGro(model,weekends);
		return "marketPrice";
	}
	@RequestMapping(value="/marketOil.compare")
	public String marketOil(Model model,@RequestParam("weekends")String weekends) {
		logger.info("marketOil진입");
		model.addAttribute("weekends",weekends);
		compareService.marketOil(model,weekends);
		return "marketPrice";
	}
	@RequestMapping(value="/marketCleaner.compare")
	public String marketCleaner(Model model,@RequestParam("weekends")String weekends) {
		logger.info("marketCleaner진입");
		model.addAttribute("weekends",weekends);
		compareService.marketCleaner(model,weekends);
		return "marketPrice";
	}
	/*마트 품목별 출력 컨트롤러*/
	@RequestMapping(value="/martCorn.compare")
	public String martCorn(Model model,@RequestParam("weekends")String weekends) {
		logger.info("martCorn진입");
		model.addAttribute("weekends",weekends);
		compareService.martCorn(model,weekends);
		return "martPrice";
	}
	@RequestMapping(value="/martMeat.compare")
	public String martMeat(Model model,@RequestParam("weekends")String weekends) {
		logger.info("martMeat진입");
		model.addAttribute("weekends",weekends);
		compareService.martMeat(model,weekends);
		return "martPrice";
	}
	@RequestMapping(value="/martFish.compare")
	public String martFish(Model model,@RequestParam("weekends")String weekends) {
		logger.info("markFish진입");
		model.addAttribute("weekends",weekends);
		compareService.martFish(model,weekends);
		return "martPrice";
	}
	@RequestMapping(value="/martFruit.compare")
	public String martFruit(Model model,@RequestParam("weekends")String weekends) {
		logger.info("marketFruit진입");
		model.addAttribute("weekends",weekends);
		compareService.martFruit(model,weekends);
		return "martPrice";
	}
	@RequestMapping(value="/martVege.compare")
	public String martVege(Model model,@RequestParam("weekends")String weekends) {
		logger.info("martVege진입");
		model.addAttribute("weekends",weekends);
		compareService.martVege(model,weekends);
		return "martPrice";
	}
	@RequestMapping(value="/martGro.compare")
	public String martGro(Model model,@RequestParam("weekends")String weekends) {
		logger.info("martGro진입");
		model.addAttribute("weekends",weekends);
		compareService.martGro(model,weekends);
		return "martPrice";
	}
	@RequestMapping(value="/martOil.compare")
	public String martOil(Model model,@RequestParam("weekends")String weekends) {
		logger.info("martOil진입");
		model.addAttribute("weekends",weekends);
		compareService.martOil(model,weekends);
		return "martPrice";
	}
	@RequestMapping(value="/martCleaner.compare")
	public String martCleaner(Model model,@RequestParam("weekends")String weekends) {
		logger.info("martCleaner진입");
		model.addAttribute("weekends",weekends);
		compareService.martCleaner(model,weekends);
		return "martPrice";
	}
	/*---------------시장 vs 마트 품목별 출력 컨트롤러-------------*/
	@RequestMapping(value="/compareCorn.compare")
	public String compareCorn(Model model,@RequestParam("weekends")String weekends) {
		logger.info("compareCorn진입");
		model.addAttribute("weekends",weekends);
		compareService.compareCorn(model,weekends);
		return "comparePrice";
	}
	@RequestMapping(value="/compareMeat.compare")
	public String compareMeat(Model model,@RequestParam("weekends")String weekends) {
		logger.info("compareMeat진입");
		model.addAttribute("weekends",weekends);
		compareService.compareMeat(model,weekends);
		return "comparePrice";
	}
	@RequestMapping(value="/compareFish.compare")
	public String compareFish(Model model,@RequestParam("weekends")String weekends) {
		logger.info("compareFish진입");
		model.addAttribute("weekends",weekends);
		compareService.compareFish(model,weekends);
		return "comparePrice";
	}
	@RequestMapping(value="/compareFruit.compare")
	public String compareFruit(Model model,@RequestParam("weekends")String weekends) {
		logger.info("compareFruit진입");
		model.addAttribute("weekends",weekends);
		compareService.compareFruit(model,weekends);
		return "comparePrice";
	}
	@RequestMapping(value="/compareVege.compare")
	public String compareVege(Model model,@RequestParam("weekends")String weekends) {
		logger.info("compareVege진입");
		model.addAttribute("weekends",weekends);
		compareService.compareVege(model,weekends);
		return "comparePrice";
	}
	@RequestMapping(value="/compareGro.compare")
	public String compareGro(Model model,@RequestParam("weekends")String weekends) {
		logger.info("compareGro진입");
		model.addAttribute("weekends",weekends);
		compareService.compareGro(model,weekends);
		return "comparePrice";
	}
	@RequestMapping(value="/compareOil.compare")
	public String compareOil(Model model,@RequestParam("weekends")String weekends) {
		logger.info("compareOil진입");
		model.addAttribute("weekends",weekends);
		compareService.compareOil(model,weekends);
		return "comparePrice";
	}
	@RequestMapping(value="/compareCleaner.compare")
	public String compareCleaner(Model model,@RequestParam("weekends")String weekends) {
		logger.info("compareCleaner진입");
		model.addAttribute("weekends",weekends);
		compareService.compareCleaner(model,weekends);
		return "comparePrice";
	}
	
	
	
	
	
}
