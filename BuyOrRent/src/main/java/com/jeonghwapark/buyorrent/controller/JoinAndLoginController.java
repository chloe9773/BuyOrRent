package com.jeonghwapark.buyorrent.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeonghwapark.buyorrent.model.MemberVO;

@Controller
public class JoinAndLoginController {
	
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
	public String setJoin(@ModelAttribute MemberVO mvo, HttpSession httpSession) {
		return "join";
	}
}
