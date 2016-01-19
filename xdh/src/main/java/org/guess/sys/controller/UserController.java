package org.guess.sys.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.web.BaseController;
import org.guess.sys.model.Role;
import org.guess.sys.model.User;
import org.guess.sys.service.RoleService;
import org.guess.sys.service.UserService;
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
@RequestMapping("/sys/user")
public class UserController extends BaseController<User> {

	{
		editView = "/sys/user/edit";
		listView = "/sys/user/list";
		showView = "/sys/user/show";
	}

	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

	@RequestMapping("isAvailable")
	public @ResponseBody
	boolean isLoginIdAvailable(@RequestParam("loginId") String id, @RequestParam("oldValue") String old) {
		if (id.equals(old))
			return true;
		User u = userService.findUniqueBy("loginId", id);
		return u == null;
	}

	/**
	 * 返回分页json数据
	 * @param page
	 * @param request
	 * @return
	 */
	@Override
	@RequestMapping("/page")
	public @ResponseBody Map<String,Object> page(Page<User> page,HttpServletRequest request){
		List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(request, "search");
		page.setOrderBy("createDate");
		page.setOrderDir(Sort.DESC);
		List<PropertyFilter> orfilters = Lists.newArrayList();
		orfilters.add(new PropertyFilter("EQI_status", "0"));
		orfilters.add(new PropertyFilter("EQI_status", "1"));
		Page<User> pageData = userService.findPage(page, filters, orfilters);
		return pageData.returnMap();
	}
	
	@Override
	public ModelAndView create() throws Exception {
		ModelAndView mav = new ModelAndView(editView);
		List<Role> roles = roleService.getAll();
		mav.addObject("roles", roles);
		return mav;
	}

	
	
	@Override
	public String create(User user) throws Exception {
		String oldpwd = request.getParameter("oldpwd");
		String[] roleIds = request.getParameterValues("roleIds");
		userService.save(user,roleIds,oldpwd);
		return REDIRECT + listView;
	}
	
	@Override
	public ModelAndView update(@PathVariable("id") Long id) throws Exception {
		ModelAndView mav = new ModelAndView(editView);
		List<Role> roles = roleService.getAll();
		mav.addObject("roles", roles);
		User obj = userService.get(id);
		mav.addObject("obj", obj);
		return mav;
	}
	
	/**
	 * 更改用户状态
	 */
	@RequestMapping(value="changeUserStatus",method=RequestMethod.POST)
	@ResponseBody
	public int changeUserStatus(@RequestParam("id") Long id){
		return userService.changeUserStatus(id);
	}
	
	/**
	 * 获取所有用户
	 * @throws Exception 
	 */
	@RequestMapping(value="getAllUsers")
	@ResponseBody
	public List<User> getAllUsers() throws Exception{
		return userService.getAll();
	}
	
	@RequestMapping(value = "/slist")
	public String slist() throws Exception {
		return "/sys/user/slist";
	}
	
	@RequestMapping(value = "/vlist")
	public String vlist() throws Exception {
		return "/sys/user/vlist";
	}
	
	@RequestMapping("/spage")
	public @ResponseBody Map<String,Object> spage(Page<User> page,HttpServletRequest request){
		List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(request, "search");
		page.setOrderBy("createDate");
		page.setOrderDir(Sort.DESC);
		filters.add(new PropertyFilter("EQI_status", "2"));
		Page<User> pageData = userService.findPage(page, filters);
		return pageData.returnMap();
	}
	
	@RequestMapping("/vpage")
	public @ResponseBody Map<String,Object> vpage(Page<User> page,HttpServletRequest request){
		List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(request, "search");
		page.setOrderBy("createDate");
		page.setOrderDir(Sort.DESC);
		filters.add(new PropertyFilter("EQI_status", "3"));
		Page<User> pageData = userService.findPage(page, filters);
		return pageData.returnMap();
	}
	
	@RequestMapping(value = "/showto/{id}")
	public ModelAndView showto(@PathVariable("id") Long id) throws Exception{
		User object = userService.get(id);
		ModelAndView mav = new ModelAndView("/sys/user/showto");
		mav.addObject("obj", object);
		return mav;
	}

	@Override
	public String delete(@RequestParam("ids") Long[] ids , HttpServletRequest request) throws Exception {
		User user = null;
		if(ids != null && ids.length > 0){
			user = userService.get(ids[0]);
		}
		
		userService.removeByIds(ids);

		if(user != null && user.getStatus() == 2){
			return REDIRECT+ "/sys/user/slist";
		}else if(user != null && user.getStatus() == 3){
			return REDIRECT+ "/sys/user/vlist";
		}
		
		return REDIRECT + listView;
	}
}