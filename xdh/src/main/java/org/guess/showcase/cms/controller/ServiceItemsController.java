package org.guess.showcase.cms.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.web.BaseController;
import org.guess.showcase.cms.model.ServiceItems;
import org.guess.showcase.cms.service.ServiceItemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

@Controller
@RequestMapping("/cms/serviceItems")
public class ServiceItemsController extends BaseController<ServiceItems>{
	{
		editView = "/cms/serviceItems/edit";
		listView = "/cms/serviceItems/list";
		showView = "/cms/serviceItems/show";
	}
	@Autowired
	private ServiceItemsService serviceItemsService;
	
	@RequestMapping("/page")
	public @ResponseBody
	Map<String, Object> page(Page<ServiceItems> page, HttpServletRequest request) {
			List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(
					request, "search");
			List<PropertyFilter> orfilters = Lists.newArrayList();

			page.setOrderBy("createDate");
			Page<ServiceItems> pageData = serviceItemsService.findPage(page, filters, orfilters);
		return pageData.returnMap();
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id) throws Exception {
		ServiceItems serviceItems = serviceItemsService.get(id);
		ModelAndView mav = new ModelAndView(editView);
		mav.addObject("serviceItems", serviceItems);
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
		ModelAndView mav = new ModelAndView(showView);
		ServiceItems serviceItems = serviceItemsService.get(id);
		//方案对应的内容模块
		List<ServiceItems> itemsList = serviceItemsService.findAllSerivceItemsByParentId(Integer.parseInt(serviceItems.getId().toString()));
		mav.addObject("obj", serviceItems);
		mav.addObject("itemsList",itemsList);
		return mav;
	}
	
	@RequestMapping(value = "/addSubItems/{serviceItemsParentId}/{id}")
	public ModelAndView addSubItems(@PathVariable("serviceItemsParentId") int serviceItemsParentId,  @PathVariable("id") Long id){
		
		ModelAndView mav = new ModelAndView("/cms/serviceItems/editItems");
		ServiceItems serviceItems = null;
		if(id == -1){
			serviceItems = new ServiceItems();
			serviceItems.setServiceItemsParentId(serviceItemsParentId);		
		}else{
			try {
				serviceItems = serviceItemsService.get(id);
				if(serviceItems == null){
					serviceItems = new ServiceItems();
					serviceItems.setServiceItemsParentId(serviceItemsParentId);				
				}
			} catch (Exception e) {
				e.printStackTrace();
				serviceItems = new ServiceItems();
				serviceItems.setServiceItemsParentId(serviceItemsParentId);
			}
		}
		
		mav.addObject("serviceItemsParentId", serviceItemsParentId);
		mav.addObject("obj", serviceItems);
		return mav;
	}
	

}