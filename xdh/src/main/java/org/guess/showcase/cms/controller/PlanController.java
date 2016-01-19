package org.guess.showcase.cms.controller;

import org.guess.core.web.BaseController;
import org.guess.showcase.cms.model.Plan;
import org.guess.showcase.cms.service.PlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cms/plan")
public class PlanController extends BaseController<Plan>{
	{
		editView = "/cms/plan/editCase";
		listView = "/cms/plan/list";
		showView = "/cms/plan/show";
	}

	@Autowired
	private PlanService planService;


}