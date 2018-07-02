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
		logger.info("������ ���� - ���� ������ �̵�");
		marketIntroduceService.marketList(model);
		return "marketMain";
	}
	
	//���ν���
	@RequestMapping(value="/daein.mid", method = RequestMethod.GET)
	public String daein() {
		System.out.println("���ν��� ��û�� �޽��ϴ�.");
		return "daein";
	}
	
	@RequestMapping(value="/daeinStore.mid", method = RequestMethod.GET)
	public String daeinStore() {
		System.out.println("���θ԰Ÿ� ��û�� �޽��ϴ�.");
		return "daeinStore";
	}
	
	@RequestMapping(value="/daeinSightsee.mid", method = RequestMethod.GET)
	public String daeinSightsee() {
		return "daeinSightsee";
	}
	
	@RequestMapping(value="/daeinMap.mid", method = RequestMethod.GET)
	public String daeinMap() {
		System.out.println("���ν��� �����Դϴ�.");
		return "daeinMap";
	}
	
	
	//�����ֽ���
	@RequestMapping(value="/namgwangju.mid", method = RequestMethod.GET)
	public String namgwangju() {
		System.out.println("�����ֽ��� ��û�� �޽��ϴ�.");
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
	
	//�絿����
	@RequestMapping(value="/yangdong.mid", method = RequestMethod.GET)
	public String yangdong() {
		System.out.println("���ν��� ��û�� �޽��ϴ�.");
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
	
	//���ٿ����
	@RequestMapping(value="/malbawoo.mid", method = RequestMethod.GET)
	public String malbawoo() {
		System.out.println("���ٿ���� ��û�� �޽��ϴ�.");
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
	
	//1913����������
	@RequestMapping(value="/seongjung.mid", method = RequestMethod.GET)
	public String seongjung() {
		System.out.println("1913�������� ��û�� �޽��ϴ�.");
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