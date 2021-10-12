package com.jeonghwapark.buyorrent.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeonghwapark.buyorrent.model.MemberVO;
import com.jeonghwapark.buyorrent.service.JoinAndLoginSrv;

@Controller
public class JoinAndLoginController {
	@Autowired
	JoinAndLoginSrv jSrv;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogin() {
		return "login";
	}

	// 회원가입 페이지 뛰우기
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String getJoin() {
		return "join";
	}
	
	// 회원가입
	@ResponseBody
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String setJoin(@ModelAttribute MemberVO mvo) {
		// 유저명 중복체크
		int validation = jSrv.chkDuplicateId(mvo.getUsername());
		
		if(validation != 0) return "failure"; // 유저명 중복인 경우
		else { // 유저명 중복이 아닌 경우
			jSrv.setJoin(mvo);
			
			return "success";
		}
	}
}
