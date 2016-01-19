package org.guess.showcase.cms.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.web.BaseController;
import org.guess.showcase.cms.model.RecomendItems;
import org.guess.showcase.cms.service.RecomendItemsService;
import org.guess.showcase.cms.util.CmsUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.common.collect.Lists;

@Controller
@RequestMapping("/cms/recomendItems")
public class RecomendItemsController extends BaseController<RecomendItems>{
	{
		editView = "/cms/recomendItems/edit";
		listView = "/cms/recomendItems/list";
		showView = "/cms/recomendItems/show";
	}
	@Autowired
	private RecomendItemsService recomendItemsService;
	
	@RequestMapping("/page")
	public @ResponseBody
	Map<String, Object> page(Page<RecomendItems> page, HttpServletRequest request) {
			List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(
					request, "search");
			List<PropertyFilter> orfilters = Lists.newArrayList();

			page.setOrderBy("recomendTime");
			Page<RecomendItems> pageData = recomendItemsService.findPage(page, filters, orfilters);
		return pageData.returnMap();
	}
	
	
	@RequestMapping(value="changeStatus",method=RequestMethod.POST)
	@ResponseBody
	public int changeStatus(@RequestParam("id") Long id, HttpServletRequest request){
		int status = recomendItemsService.changeStatus(id);
		CmsUtil.staticWeddingOrShootRecomend(request);
		return status;
	}
}