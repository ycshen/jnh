package org.guess.showcase.cms.controller;

import java.io.BufferedReader;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.utils.security.Coder;
import org.guess.core.web.BaseController;
import org.guess.sys.model.User;
import org.guess.sys.service.RoleService;
import org.guess.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.google.gson.Gson;
@Controller
@RequestMapping("/cms/zcuser")
public class ZcUserController extends BaseController<User>{
	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;
	
	/**
	 * 注册用户
	 * @throws Exception 
	 */
	@RequestMapping(value="addUser")
	@ResponseBody
	public String addUser()  throws Exception{
		try{
			HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
			String jsonString = this.readJSONString(request);
			Gson gson = new Gson();
			User user = gson.fromJson(jsonString, User.class);
			user.setStatus(2);
			user.setName(user.getLoginId());
			//user.setPasswd(Coder.encryptMD5(user.getLoginId() + user.getPasswd()));
			if(userService.findByLoginId(user.getLoginId()) != null){
				return "0";
			}
			
			userService.save(user, new String[]{"11"}, "");
		}catch(Exception e){
			e.printStackTrace();
			return "3";
		}
		
		return "1";
	}
	
	/**
	 * 从request中读取字符串对象并且返回对象的json字符串
	 * @param request
	 * @return
	 */
	public String readJSONString(HttpServletRequest request){
		StringBuffer json = new StringBuffer();
		String line = null;
		try {
			BufferedReader reader = request.getReader();
			while((line = reader.readLine()) != null) {
				json.append(line);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return json.toString();
	}
}
