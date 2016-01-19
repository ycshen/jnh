package org.guess.showcase.cms.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.web.BaseController;
import org.guess.showcase.cms.model.Gr;
import org.guess.showcase.cms.model.Recruit;
import org.guess.showcase.cms.service.GrService;
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
@RequestMapping("/cms/gr")
public class GrController extends BaseController<Gr>{
	
	{
		editView = "/cms/gr/edit";
		listView = "/cms/gr/list";
		showView = "/cms/gr/show";
	}
	@Autowired
	private GrService rService;


	/**
	 * 添加
	 * @param object
	 * @return
	 * @throws Exception
	 */
	@Override
	@RequestMapping(method = RequestMethod.POST, value = "/edit")
	public String create(Gr gr) throws Exception {
		gr.setStatus("0"); //未审核
		gr.setHits(666);
		gr.setLoginId(UserUtil.getCurrentUser().getLoginId());
		rService.save(gr);
		return REDIRECT + listView;
	}
	
	@RequestMapping(value = "/slist")
	public String slist() throws Exception {
		return "/cms/gr/slist";
	}
	
	/**
	 * 返回分页json数据
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/page")
	@Override
	public @ResponseBody Map<String,Object> page(Page<Gr> page,HttpServletRequest request){
		List<PropertyFilter> orfilters = Lists.newArrayList();
		page.setOrderBy("id");
		page.setOrderDir(Sort.DESC);		
		orfilters.add(new PropertyFilter("EQS_loginId", UserUtil.getCurrentUser().getLoginId()));
		Page<Gr> pageData = rService.findPage(page, orfilters);
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
		
		Page<Gr> pageData = rService.findPage(page, orfilters);
		
		return pageData.returnMap();
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id) throws Exception {
		Gr obj = rService.get(id);
		ModelAndView mav = new ModelAndView(editView);
		mav.addObject("obj", obj);
		return mav;
	}
	
	/**
	 * 更改招聘信息状态
	 */
	@RequestMapping(value="changeStatus",method=RequestMethod.POST)
	@ResponseBody
	public int changeStatus(@RequestParam("id") Long id){
		return rService.changeStatus(id);
	}
}
