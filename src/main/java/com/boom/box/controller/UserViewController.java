package com.boom.box.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.boom.box.HomeController;
import com.boom.box.service.UserService;
import com.boom.box.vo.UserVO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
@RequestMapping(value="/user")
public class UserViewController {
	private static final Logger logger = LoggerFactory.getLogger(UserViewController.class);
	@Autowired
	private UserService service;
	
	//로그인 폼
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String login() {
		return "user/loginForm";
	}
	
	//조인폼
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		
		return "user/joinForm";		
	}
	
	//구글로그인
	@RequestMapping(value="/googleLogin", method= RequestMethod.GET)
	public String googleLogin(UserVO user, Model model) {
		String path = service.googleLogin(user, model);
		
		
		return path;
	}
	
	//회원가입
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String join(UserVO user) {
		String path = service.insertUser(user);
		logger.info("회원가입 최종 성공");
		return path;
	}
	
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		service.logout();
		return "redirect:/user/loginForm";
	}
	

	
	
	@RequestMapping(value="/editInfoForm", method=RequestMethod.GET)
	public String editInfoForm() {
		return "user/editInfoForm";
	}
	
}