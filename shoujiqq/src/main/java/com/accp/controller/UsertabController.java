package com.accp.controller;

import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.accp.entity.Usertab;
import com.accp.service.UsertabService;

@Controller
@RequestMapping("/UsertabController")
public class UsertabController {

	@Autowired
	public UsertabService usertabService;

	
	@ResponseBody
	@RequestMapping("/addUser")
	public String addUser(String nickName,String password) {
		Usertab u=new Usertab();
		u.setNickname(nickName);
		u.setPassword(password);
		//u.setCreatetime(new Date());
		//生成随机数
		Random rand=new Random();
		String i=rand.nextInt(100000000)+"";
		u.setUsername(i);
		usertabService.insertusertab(u);
		return i;
	}
	
	@RequestMapping(value = "/userlogin", method = RequestMethod.GET)
	public String userlogin() {
		return "/login.jsp";
	}
	
@RequestMapping(value="/userlogin",method=RequestMethod.POST)
	public String dousetlogin(String username, String password, HttpSession session) {

		Usertab usertab = usertabService.userlogin(username, password);
		System.err.println(username);
		System.err.println(password);
		if (usertab!=null) {
			session.setAttribute("username", username);
			return  "redirect:/index.jsp";
			
		}
		else {
			return "/login.jsp";
		}

	}
}
