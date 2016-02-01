package org.guess.showcase.cms.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.web.BaseController;
import org.guess.showcase.cms.model.KeyValueParams;
import org.guess.showcase.cms.model.Recruit;
import org.guess.showcase.cms.service.KeyValueParamsService;
import org.guess.sys.util.UserUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

/**
 * 键值对控制器
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/cms/keyValue")
public class KeyValueParamsController extends BaseController<KeyValueParams>{
	
	{
		editView = "/cms/keyValue/edit";
		listView = "/cms/keyValue/list";
		showView = "/cms/keyValue/show";
	}
	@Autowired
	private KeyValueParamsService keyValueService;
	
	/**
	 * 返回分页json数据
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/page")
	@Override
	public @ResponseBody Map<String,Object> page(Page<KeyValueParams> page,HttpServletRequest request){
		List<PropertyFilter> orfilters = Lists.newArrayList();
		page.setOrderBy("id");
		page.setOrderDir(Sort.DESC);		
		Page<KeyValueParams> pageData = keyValueService.findPage(page, orfilters);
		return pageData.returnMap();
	}
	
	/**
	 * 返回分页json数据
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/auditpage")
	public @ResponseBody Map<String,Object> auditpage(Page<Recruit> page,HttpServletRequest request){
		List<PropertyFilter> orfilters = Lists.newArrayList();
		page.setOrderBy("id");
		page.setOrderDir(Sort.DESC);
		List<PropertyFilter> searchCon = PropertyFilter.buildFromHttpRequest(request, "search");
		for (PropertyFilter propertyFilter : searchCon) {
			orfilters.add(propertyFilter);
		}
		
		Page<KeyValueParams> pageData = keyValueService.findPage(page, orfilters);
		
		return pageData.returnMap();
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id) throws Exception {
		KeyValueParams keyValue = keyValueService.get(id);
		ModelAndView mav = new ModelAndView(editView);
		mav.addObject("keyValue", keyValue);
		return mav;
	}
	
}
