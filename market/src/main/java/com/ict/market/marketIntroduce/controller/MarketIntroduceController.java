package com.ict.market.marketIntroduce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ict.market.marketIntroduce.service.MarketIntroduceService;


@Controller
public class MarketIntroduceController {
	
	@Autowired
	MarketIntroduceService marketIntroduceService;
	
	/* ********** 메인 페이지 이동 ********** */
	@RequestMapping(value="/main.mid" , method = RequestMethod.GET)
	public String marketMain(Model model) {
		marketIntroduceService.marketList(model);
		return "marketMain";
	}
	/* ********** 메인 페이지 이동 ********** */
	
	
	
	/* ********** 대인시장 ********** */
	@RequestMapping(value="/daein.mid", method = RequestMethod.GET)
	public String daein() {
		return "daein";
	}
	
	@RequestMapping(value="daeinHistory", method = RequestMethod.GET)
	public String daeinHistory() {
		return "daeinHistory";
	}
	
	@RequestMapping(value="/daeinStore.mid", method = RequestMethod.GET)
	public String daeinStore() {
		return "daeinStore";
	}
	
	@RequestMapping(value="/daeinSightsee.mid", method = RequestMethod.GET)
	public String daeinSightsee() {
		return "daeinSightsee";
	}
	
	@RequestMapping(value="/daeinMap.mid", method = RequestMethod.GET)
	public String daeinMap() {
		return "daeinMap";
	}
	/* ********** 대인시장 ********** */
	
	
	
	/* ********** 남광주시장 ********** */
	@RequestMapping(value="/namgwangju.mid", method = RequestMethod.GET)
	public String namgwangju() {
		return "namgwangju";
	}
	
	@RequestMapping(value="namgwangjuHistory", method = RequestMethod.GET)
	public String namgwangjuHistory() {
		return "namgwangjuHistory";
	}
	
	@RequestMapping(value="/namgwangjuStore.mid", method = RequestMethod.GET)
	public String namgwangjuStore() {
		return "namgwangjuStore";
	}
	
	@RequestMapping(value="/namgwangjuSightsee.mid", method = RequestMethod.GET)
	public String namgwangjuSightsee() {
		return "namgwangjuSightsee";
	}
	
	@RequestMapping(value="/namgwangjuMap.mid", method = RequestMethod.GET)
	public String namgwangjuMap() {
		return "namgwangjuMap";
	}
	/* ********** 남광주시장 ********** */
	
	
	
	/* ********** 양동시장 ********** */
	@RequestMapping(value="/yangdong.mid", method = RequestMethod.GET)
	public String yangdong() {
		return "yangdong";
	}
	
	@RequestMapping(value="yangdongHistory", method = RequestMethod.GET)
	public String yangdongHistory() {
		return "yangdongHistory";
	}
	
	@RequestMapping(value="/yangdongStore.mid", method = RequestMethod.GET)
	public String yangdongStore() {
		return "yangdongStore";
	}
	
	@RequestMapping(value="/yangdongSightsee.mid", method = RequestMethod.GET)
	public String yangdongSightsee() {
		return "yangdongSightsee";
	}
	
	@RequestMapping(value="/yangdongMap.mid", method = RequestMethod.GET)
	public String yangdongMap() {
		return "yangdongMap";
	}
	/* ********** 양동시장 ********** */
	
	
	
	/* ********** 말바우시장 ********** */
	@RequestMapping(value="/malbawoo.mid", method = RequestMethod.GET)
	public String malbawoo() {
		return "malbawoo";
	}
	
	@RequestMapping(value="malbawooHistory", method = RequestMethod.GET)
	public String malbawooHistory() {
		return "malbawooHistory";
	}
	
	@RequestMapping(value="/malbawooStore.mid", method = RequestMethod.GET)
	public String malbawooStore() {
		return "yangdongStore";
	}
	
	@RequestMapping(value="/malbawooSightsee.mid", method = RequestMethod.GET)
	public String malbawooSightsee() {
		return "malbawooSightsee";
	}
	
	@RequestMapping(value="/malbawooMap.mid", method = RequestMethod.GET)
	public String malbawooMap() {
		return "malbawooMap";
	}
	/* ********** 말바우시장 ********** */
	
	
	
	/* ********** 송정시장 ********** */
	@RequestMapping(value="/seongjung.mid", method = RequestMethod.GET)
	public String seongjung() {
		return "seongjung";
	}
	
	@RequestMapping(value="seongjungHistory", method = RequestMethod.GET)
	public String seongjungHistory() {
		return "seongjungHistory";
	}
	
	@RequestMapping(value="/seongjungStore.mid", method = RequestMethod.GET)
	public String seongjungStore() {
		return "yangdongStore";
	}
	
	@RequestMapping(value="/seongjungSightsee.mid", method = RequestMethod.GET)
	public String seongjungSightsee() {
		return "seongjungSightsee";
	}
	
	@RequestMapping(value="/seongjungMap.mid", method = RequestMethod.GET)
	public String seongjungMap() {
		return "seongjungMap";
	}
	/* ********** 송정시장 ********** */
}