package org.guess.showcase.cms.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.web.BaseController;
import org.guess.showcase.cms.model.Case;
import org.guess.showcase.cms.model.MenuPrice;
import org.guess.showcase.cms.service.CaseService;
import org.guess.showcase.cms.service.MenuPriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

@Controller
@RequestMapping("/cms/menuPrice")
public class MenuPriceController extends BaseController<MenuPrice>{
	{
		editView = "/cms/menuPrice/edit";
		listView = "/cms/menuPrice/list";
		showView = "/cms/menuPrice/show";
	}
	@Autowired
	private MenuPriceService menuPriceService;
	
	@Autowired
	private CaseService caseService;
	
	@RequestMapping("/page")
	public @ResponseBody
	Map<String, Object> page(Page<MenuPrice> page, HttpServletRequest request) {
			List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(
					request, "search");
			List<PropertyFilter> orfilters = Lists.newArrayList();

			page.setOrderBy("createDate");
			page.setOrderDir(Sort.DESC);
			Page<MenuPrice> pageData = menuPriceService.findPage(page, filters, orfilters);
		return pageData.returnMap();
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id) throws Exception {
		MenuPrice menuPrice = menuPriceService.get(id);
		ModelAndView mav = new ModelAndView(editView);
		mav.addObject("menuPrice", menuPrice);
		return mav;
	}

	/**
	 * 展示
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/show/{id}")
	public ModelAndView show(@PathVariable("id") Long id) throws Exception{
		MenuPrice object = menuPriceService.get(id);
		ModelAndView mav = new ModelAndView(showView);
		//方案对应的内容模块
		List<Case> caseList = caseService.findAllCaseByMenuPriceId(Integer.parseInt(id.toString()));
		mav.addObject("obj", object);
		mav.addObject("caseList",caseList);
		return mav;
	}
	
	

}