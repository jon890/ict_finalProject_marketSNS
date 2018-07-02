package com.ict.market.marketIntroduce.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	
	private static final Logger logger = LoggerFactory.getLogger(MarketIntroduceController.class);
	
	@RequestMapping(value="/main.mid" , method = RequestMethod.GET)
	public String marketMain(Model model) {
		logger.info("광주의 시장 - 메인 페이지 이동");
		marketIntroduceService.marketList(model);
		return "marketMain";
	}
	
	//대인시장
	@RequestMapping(value="/daein.mid", method = RequestMethod.GET)
	public String daein() {
		System.out.println("대인시장 요청을 받습니다.");
		return "daein";
	}
	
	@RequestMapping(value="/daeinStore.mid", method = RequestMethod.GET)
	public String daeinStore() {
		System.out.println("대인먹거리 요청을 받습니다.");
		return "daeinStore";
	}
	
	@RequestMapping(value="/daeinSightsee.mid", method = RequestMethod.GET)
	public String daeinSightsee() {
		return "daeinSightsee";
	}
	
	@RequestMapping(value="/daeinMap.mid", method = RequestMethod.GET)
	public String daeinMap() {
		System.out.println("대인시장 지도입니다.");
		return "daeinMap";
	}
	
	
	//남광주시장
	@RequestMapping(value="/namgwangju.mid", method = RequestMethod.GET)
	public String namgwangju() {
		System.out.println("남광주시장 요청을 받습니다.");
		return "namgwangju";
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
	
	//양동시장
	@RequestMapping(value="/yangdong.mid", method = RequestMethod.GET)
	public String yangdong() {
		System.out.println("대인시장 요청을 받습니다.");
		return "yangdong";
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
	
	//말바우시장
	@RequestMapping(value="/malbawoo.mid", method = RequestMethod.GET)
	public String malbawoo() {
		System.out.println("말바우시장 요청을 받습니다.");
		return "malbawoo";
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
	
	//1913송정역시장
	@RequestMapping(value="/seongjung.mid", method = RequestMethod.GET)
	public String seongjung() {
		System.out.println("1913송정시장 요청을 받습니다.");
		return "malbawoo";
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
	
	
}