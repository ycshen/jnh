package org.guess.showcase.cms.controller;

import org.guess.sys.util.UserUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/other")
public class OtherController {
	

	@RequestMapping("/otherMenu")
	public ModelAndView otherMenu(){
		ModelAndView mav = new ModelAndView("/cms/otherMenu");
		mav.addObject("user", UserUtil.getCurrentUser());
		return mav;
	}
}