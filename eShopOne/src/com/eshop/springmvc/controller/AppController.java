package com.eshop.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AppController {

	@Autowired
	private MessageSource messageSource;

	@RequestMapping(value = "/homePage", method = RequestMethod.GET)
	public String getFirstPage(Model model) {
		return "homePage";
	}

}
