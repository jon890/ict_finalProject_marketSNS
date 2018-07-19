package com.ict.market.compare.service;

import org.springframework.ui.Model;

public interface CompareService {
	public void marketPrice(Model model,String weekends);
	public void martPrice(Model model,String weekends);
	public void comparePrice(Model model,String weekends);
	public void compareAgo(Model model,String weekends);
	public void marketAgo(Model model,String weekends);
	public void martAgo(Model model,String weekends);
	/*���� ǰ�� ��� �޼ҵ�*/
	public void marketCorn(Model model,String weekends);
	public void marketMeat(Model model,String weekends);
	public void marketFish(Model model,String weekends);
	public void marketFruit(Model model,String weekends);
	public void marketVege(Model model,String weekends);
	public void marketGro(Model model,String weekends);
	public void marketOil(Model model,String weekends);
	public void marketCleaner(Model model,String weekends);
	/*��Ʈ ǰ�� ��� �޼ҵ�*/
	public void martCorn(Model model,String weekends);
	public void martMeat(Model model,String weekends);
	public void martFish(Model model,String weekends);
	public void martFruit(Model model,String weekends);
	public void martVege(Model model,String weekends);
	public void martGro(Model model,String weekends);
	public void martOil(Model model,String weekends);
	public void martCleaner(Model model,String weekends);
	/*����vs��Ʈ ǰ�� ��� �޼ҵ�*/
	public void compareCorn(Model model,String weekends);
	public void compareMeat(Model model,String weekends);
	public void compareFish(Model model,String weekends);
	public void compareFruit(Model model,String weekends);
	public void compareVege(Model model,String weekends);
	public void compareGro(Model model,String weekends);
	public void compareOil(Model model,String weekends);
	public void compareCleaner(Model model,String weekends);
	
	
}
