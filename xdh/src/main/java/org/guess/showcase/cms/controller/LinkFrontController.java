package org.guess.showcase.cms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.guess.showcase.cms.model.Link;
import org.guess.showcase.cms.service.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class LinkFrontController {

	@Autowired
	private LinkService linkService;

	// 友情连接
	@RequestMapping("{site}/ourLink.html")
	public ModelAndView ourLink(@PathVariable("site") String site, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/front/" + site + "/link");
		List<Link> linkList = linkService.findAll();
		mav.addObject("linkList", linkList);
		return mav;
	}
	
	
}
