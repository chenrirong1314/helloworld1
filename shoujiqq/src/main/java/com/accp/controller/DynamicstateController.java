package com.accp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.accp.entity.Dynamicstate;
import com.accp.service.DynamicstateService;

@Controller
@RequestMapping("/DynamicstateController")
public class DynamicstateController {
	@Autowired
	public DynamicstateService dynamicstateService;

	@ResponseBody
	@RequestMapping(value = "/cxdt", method = RequestMethod.GET)
	public List<Dynamicstate> cxdt() {

		return this.dynamicstateService.dynamicstates();

	}
}
