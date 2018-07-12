package com.ict.market.main.service;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ict.market.main.dao.MainDao;
import com.ict.market.main.dto.MarketMemberDto;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainDao mainDao;
	
	/* ********** ������������ ��������, ������ �� 4���� �������� ��� ********** */
	@Override
	public void indexArticle(Model model) {
		model.addAttribute("helpArticleList",mainDao.mainHelp());
		model.addAttribute("noticeArticleList",mainDao.mainNotice());
	}
	/* ********** ������������ ��������, ������ �� 4���� �������� ��� ********** */
	
	
	
	/* ********** �α��� ���� ��� ********** */
	@Override
	public HashMap<String, String> login(String id, String password, HttpSession session, HttpServletRequest req) {
		MarketMemberDto dbMember = mainDao.login(id);
		HashMap<String, String> result = new HashMap<>();
		
		if(dbMember == null) {
			result.put("resultCode", "idError");
		} else if(!dbMember.getPassword().equals(password)) {
			result.put("resultCode", "pwdError");
		} else {
			result.put("resultCode", "loginSuccess");
			result.put("backUri", (String)session.getAttribute("referer"));
			result.put("id", id);
			session.invalidate();
			session = req.getSession();
			session.setAttribute("id", id);
			session.setAttribute("adminChk", dbMember.getAdminchk());
		}	
		return result;
	}
	
	@Override
	public HashMap<String, String> loginWithKakao(String id, String nickName, String profileImg, HttpSession session,
			HttpServletRequest req) {
		HashMap<String, String> result = new HashMap<>();
		result.put("resultCode", "loginSuccess");
		result.put("backUri", (String)session.getAttribute("referer"));
		result.put("id", nickName + "(Kakao)");
		
		session.invalidate();
		session = req.getSession();
		session.setAttribute("id", nickName + "(Kakao)");
		session.setAttribute("profileImg", profileImg);
		
		if( mainDao.kakaoInsertChk(nickName + "(Kakao)") == null) {
			MarketMemberDto member = new MarketMemberDto();
			member.setId(nickName + "(Kakao)");
			member.setPassword(id + "_Kakao");
			mainDao.registerKakao(member);
		}
		return result;
	}

	@Override
	public void register(MarketMemberDto member) {
		mainDao.register(member);
	}
	/* ********** �α��� ���� ��� ********** */

	
	/* ********** ���̵� �ߺ� üũ ********** */
	public String registerIdCheck(String id) {
		String idCheck = mainDao.registerIdCheck(id);
		String result = null;
		if(idCheck != null) {
			result = "0";
		} else {
			result = "1";
		}
		return result;
	}
	/* ********** ���̵� �ߺ� üũ ********** */

	
	
	/* ********** ȸ�� ���� ����  ********** */
	@Override
	public MarketMemberDto getMemberUpdate(String id) {
		return mainDao.getMemberUpdate(id);
	}
	
	@Override
	public void memberUpdate(MarketMemberDto member) {
		if( member.getAge() != 0 || member.getName() != null || member.getPassword() != null || member.getGender() != null) {
			mainDao.memberUpdate(member);
		}
	}
	/* ********** ȸ�� ���� ����  ********** */
}