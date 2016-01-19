package org.guess.sys.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.web.BaseController;
import org.guess.sys.model.Log;
import org.guess.sys.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/sys/log/")
public class LogController extends BaseController<Log>{

	{
		editView = "/sys/log/edit";
		listView = "/sys/log/list";
		showView = "/sys/log/show";
	}
	
	@Autowired
	private LogService logService;
	
	/**
	 * 返回分页json数据
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/page")
	public @ResponseBody Map<String,Object> page(Page<Log> page,HttpServletRequest request){
		page.setOrderBy("operTime");
		page.setOrderDir(Sort.DESC);
		Page<Log> pageData = logService.findPage(page, PropertyFilter.buildFromHttpRequest(request, "search"));
		return pageData.returnMap();
	}
}
