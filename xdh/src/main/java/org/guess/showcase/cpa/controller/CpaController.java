package org.guess.showcase.cpa.controller;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.utils.lucene.LuceneSearcher;
import org.guess.core.web.BaseController;
import org.guess.showcase.blog.model.SearchResult;
import org.guess.showcase.blog.service.SearchService;
import org.guess.showcase.cms.model.Recruit;
import org.guess.showcase.cpa.model.CpaArticle;
import org.guess.showcase.cpa.service.CpaArticleService;
import org.guess.sys.util.UserUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

/**
 * cpa
 * @author shenyuchuan
 *
 */
@Controller
@RequestMapping("/cms/cpa")
public class CpaController  extends BaseController<CpaArticle>{
	@Autowired
	private CpaArticleService capArticleService;

	{
		editView = "/cms/cpa/edit";
		listView = "/cms/cpa/list";
		showView = "/cms/cpa/show";
	}


	/**
	 * 添加
	 * @param object
	 * @return
	 * @throws Exception
	 */
	@Override
	@RequestMapping(method = RequestMethod.POST, value = "/edit")
	public String create(CpaArticle cpaArticle) throws Exception {
		cpaArticle.setCreateBy(UserUtil.getCurrentUser());
		capArticleService.save(cpaArticle);
		return REDIRECT + listView;
	}
	
	
	/**
	 * 返回分页json数据
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/page")
	@Override
	public @ResponseBody Map<String,Object> page(Page<CpaArticle> page,HttpServletRequest request){
		List<PropertyFilter> orfilters = Lists.newArrayList();
		page.setOrderBy("id");
		page.setOrderDir(Sort.DESC);		
		Page<CpaArticle> pageData = capArticleService.findPage(page, orfilters);
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
		
		Page<CpaArticle> pageData = capArticleService.findPage(page, orfilters);
		
		return pageData.returnMap();
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id) throws Exception {
		CpaArticle obj = capArticleService.get(id);
		ModelAndView mav = new ModelAndView(editView);
		mav.addObject("obj", obj);
		return mav;
	}
	
	
}
