package org.guess.showcase.cms.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.web.BaseController;
import org.guess.showcase.cms.model.Style;
import org.guess.showcase.cms.service.StyleService;
import org.guess.sys.util.UserUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

@Controller
@RequestMapping("/cms/style")
public class StyleController extends BaseController<Style>{
	
	{
		editView = "/cms/style/edit";
		listView = "/cms/style/list";
		showView = "/cms/style/show";
	}
	@Autowired
	private StyleService styleService;


	/**
	 * 添加
	 * @param object
	 * @return
	 * @throws Exception
	 */
	@Override
	@RequestMapping(method = RequestMethod.POST, value = "/edit")
	public String create(Style style) throws Exception {
		style.setStatus("0"); //不显示在首页
		style.setHits(1);
		styleService.save(style);
		return REDIRECT + listView;
	}
	
	@RequestMapping(value = "/slist")
	public String slist() throws Exception {
		return "/cms/style/slist";
	}
	
	/**
	 * 返回分页json数据
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/page")
	@Override
	public @ResponseBody Map<String,Object> page(Page<Style> page,HttpServletRequest request){
		List<PropertyFilter> orfilters = Lists.newArrayList();
		page.setOrderBy("id");
		page.setOrderDir(Sort.DESC);		
		Page<Style> pageData = styleService.findPage(page, orfilters);
		return pageData.returnMap();
	}
	
	/**
	 * 返回分页json数据
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/auditpage")
	public @ResponseBody Map<String,Object> auditpage(Page<Style> page,HttpServletRequest request){
		List<PropertyFilter> orfilters = Lists.newArrayList();
		page.setOrderBy("id");
		page.setOrderDir(Sort.DESC);
		List<PropertyFilter> searchCon = PropertyFilter.buildFromHttpRequest(request, "search");
		for (PropertyFilter propertyFilter : searchCon) {
			orfilters.add(propertyFilter);
		}
		
		Page<Style> pageData = styleService.findPage(page, orfilters);
		
		return pageData.returnMap();
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id) throws Exception {
		Style obj = styleService.get(id);
		ModelAndView mav = new ModelAndView(editView);
		mav.addObject("obj", obj);
		return mav;
	}
	
	
	@RequestMapping(value="changeStatus",method=RequestMethod.POST)
	@ResponseBody
	public int changeStatus(@RequestParam("id") Long id){
		return styleService.changeStatus(id);
	}
}
