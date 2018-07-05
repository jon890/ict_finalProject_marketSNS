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
		logger.info("market����");
		compareService.marketPrice(model);
		return "marketPrice";
	}
	@RequestMapping(value="/mart.compare")
	public String martPrice(Model model){
		logger.info("mart����");
		compareService.martPrice(model);
		return "martPrice";
	}
	@RequestMapping(value="/compare.compare")
	public String comparePrice(Model model){
		logger.info("compare����");
		compareService.comparePrice(model);
		return "comparePrice";
	}
	
	/*���� ǰ�� ��� ��Ʈ�ѷ�*/
	@RequestMapping(value="/marketCorn.compare")
	public String marketCorn(Model model) {
		logger.info("marketCorn����");
		compareService.marketCorn(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketMeat.compare")
	public String marketMeat(Model model) {
		logger.info("marketMeat����");
		compareService.marketMeat(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketFish.compare")
	public String marketFish(Model model) {
		logger.info("marketFish����");
		compareService.marketFish(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketFruit.compare")
	public String marketFruit(Model model) {
		logger.info("marketFruit����");
		compareService.marketFruit(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketVege.compare")
	public String marketVege(Model model) {
		logger.info("marketVege����");
		compareService.marketVege(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketGro.compare")
	public String marketGro(Model model) {
		logger.info("marketGro����");
		compareService.marketGro(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketOil.compare")
	public String marketOil(Model model) {
		logger.info("marketOil����");
		compareService.marketOil(model);
		return "marketPrice";
	}
	@RequestMapping(value="/marketCleaner.compare")
	public String marketCleaner(Model model) {
		logger.info("marketCleaner����");
		compareService.marketCleaner(model);
		return "marketPrice";
	}
	/*��Ʈ ǰ�� ��� ��Ʈ�ѷ�*/
	@RequestMapping(value="/martCorn.compare")
	public String martCorn(Model model) {
		logger.info("martCorn����");
		compareService.martCorn(model);
		return "martPrice";
	}
	@RequestMapping(value="/martMeat.compare")
	public String martMeat(Model model) {
		logger.info("martMeat����");
		compareService.martMeat(model);
		return "martPrice";
	}
	@RequestMapping(value="/martFish.compare")
	public String martFish(Model model) {
		logger.info("markFish����");
		compareService.martFish(model);
		return "martPrice";
	}
	@RequestMapping(value="/martFruit.compare")
	public String martFruit(Model model) {
		logger.info("marketFruit����");
		compareService.martFruit(model);
		return "martPrice";
	}
	@RequestMapping(value="/martVege.compare")
	public String martVege(Model model) {
		logger.info("martVege����");
		compareService.martVege(model);
		return "martPrice";
	}
	@RequestMapping(value="/martGro.compare")
	public String martGro(Model model) {
		logger.info("martGro����");
		compareService.martGro(model);
		return "martPrice";
	}
	@RequestMapping(value="/martOil.compare")
	public String martOil(Model model) {
		logger.info("martOil����");
		compareService.martOil(model);
		return "martPrice";
	}
	@RequestMapping(value="/martCleaner.compare")
	public String martCleaner(Model model) {
		logger.info("martCleaner����");
		compareService.martCleaner(model);
		return "martPrice";
	}
	/*---------------���� vs ��Ʈ ǰ�� ��� ��Ʈ�ѷ�-------------*/
	@RequestMapping(value="/compareCorn.compare")
	public String compareCorn(Model model) {
		logger.info("compareCorn����");
		compareService.compareCorn(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareMeat.compare")
	public String compareMeat(Model model) {
		logger.info("compareMeat����");
		compareService.compareMeat(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareFish.compare")
	public String compareFish(Model model) {
		logger.info("compareFish����");
		compareService.compareFish(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareFruit.compare")
	public String compareFruit(Model model) {
		logger.info("compareFruit����");
		compareService.compareFruit(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareVege.compare")
	public String compareVege(Model model) {
		logger.info("compareVege����");
		compareService.compareVege(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareGro.compare")
	public String compareGro(Model model) {
		logger.info("compareGro����");
		compareService.compareGro(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareOil.compare")
	public String compareOil(Model model) {
		logger.info("compareOil����");
		compareService.compareOil(model);
		return "comparePrice";
	}
	@RequestMapping(value="/compareCleaner.compare")
	public String compareCleaner(Model model) {
		logger.info("compareCleaner����");
		compareService.compareCleaner(model);
		return "comparePrice";
	}
	
	
	
	
	
}
