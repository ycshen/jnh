package org.guess.security.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.guess.core.Constants;
import org.guess.core.utils.security.Coder;
import org.guess.core.utils.web.ServletUtils;
import org.guess.sys.model.Log;
import org.guess.sys.model.User;
import org.guess.sys.service.LogService;
import org.guess.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.google.gson.Gson;

@Controller
@RequestMapping("/")
public class LoginController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private LogService logService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "/front/xdh/index";
	}

	@RequestMapping(method = RequestMethod.GET,value="/login")
	public String login() {
		return "/login";
	}
	
	@RequestMapping(method = RequestMethod.GET,value="/denglu")
	@ResponseBody
	public String denglu(@RequestParam("userName") String userName, @RequestParam("password") String password,HttpServletRequest request) {
		boolean remember = false;
		UsernamePasswordToken token = new UsernamePasswordToken(userName, Coder.encryptMD5(userName+password));
		token.setRememberMe(remember);
		Subject currentUser = SecurityUtils.getSubject();
		try {
			currentUser.login(token);
		} catch (UnknownAccountException uae) {
			String handleUserName = "";
			if(StringUtils.isNotBlank(userName)){
				handleUserName = userName.substring(0, 4);
			}
			
			logService.addExceptionLog("未知账户", "对用户[" + handleUserName + "]进行登录验证..验证未通过,未知账户",ServletUtils.getIpAddr(request),"系统记录" );

			return "0";
		} catch (IncorrectCredentialsException ice) {
			String handleUserName = "";
			if(StringUtils.isNotBlank(userName)){
				handleUserName = userName.substring(0, 4);
			};
			logService.addExceptionLog("错误的凭证", "对用户[" + handleUserName + "]进行登录验证..验证未通过,错误的凭证",ServletUtils.getIpAddr(request),"系统记录" );

			return "0";
		} catch (LockedAccountException lae) {
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,账户已锁定");
			String handleUserName = "";
			if(StringUtils.isNotBlank(userName)){
				handleUserName = userName.substring(0, 4);
			}
			logService.addExceptionLog("错误的凭证", "对用户[" + handleUserName + "]进行登录验证..验证未通过,错误的凭证",ServletUtils.getIpAddr(request),"系统记录" );
			
			return "0";
		} catch (ExcessiveAttemptsException eae) {
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,错误次数过多");
			//request.setAttribute("message_login", "用户名或密码错误次数过多");
			return "0";
		} catch (AuthenticationException ae) {
			// 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,堆栈轨迹如下");
			ae.printStackTrace();
			//request.setAttribute("message_login", "用户名或密码不正确");
			return "0";
		}
		// 验证是否登录成功
		if (currentUser.isAuthenticated()) {
			try {
				User curUser = userService.findByLoginId(userName);
				logService.addOperLog("登陆成功", "系统登陆", ServletUtils.getIpAddr(request), curUser.getName());
			} catch (Exception e) {
				e.printStackTrace();
				logService.addExceptionLog("登陆异常", e.getMessage(), ServletUtils.getIpAddr(request), "系统记录");
				return "0";
			}
			
			return "1";
		} else {
			token.clear();
		}
		
		return "0";
	}

	@RequestMapping(method = RequestMethod.POST,value="login")
	public String login(@RequestParam("userName") String userName, @RequestParam("password") String password,
			@RequestParam(value="rememberMe",required=false,defaultValue="false") boolean remember,HttpServletRequest request) {

		UsernamePasswordToken token = new UsernamePasswordToken(userName, Coder.encryptMD5(userName+password));
		token.setRememberMe(remember);
		Subject currentUser = SecurityUtils.getSubject();
		try {
			currentUser.login(token);
		} catch (UnknownAccountException uae) {
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,未知账户");
			request.setAttribute("message_login", "未知账户");
		} catch (IncorrectCredentialsException ice) {
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,错误的凭证");
			request.setAttribute("message_login", "密码不正确");
		} catch (LockedAccountException lae) {
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,账户已锁定");
			request.setAttribute("message_login", "账户已锁定");
		} catch (ExcessiveAttemptsException eae) {
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,错误次数过多");
			request.setAttribute("message_login", "用户名或密码错误次数过多");
		} catch (AuthenticationException ae) {
			// 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			System.out.println("对用户[" + userName + "]进行登录验证..验证未通过,堆栈轨迹如下");
			ae.printStackTrace();
			request.setAttribute("message_login", "用户名或密码不正确");
		}
		// 验证是否登录成功
		if (currentUser.isAuthenticated()) {
			try {
				User curUser = userService.findByLoginId(userName);
				logService.addOperLog("登陆成功", "系统登陆", ServletUtils.getIpAddr(request), curUser.getName());
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "redirect:/cms/gr/list";
		} else {
			token.clear();
		}
		return "/login";
	}
	
	/**
	 * 用户登出
	 */
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		User curUser = (User) session.getAttribute(Constants.CURRENT_USER);
		SecurityUtils.getSubject().logout();
		try {
			logService.addOperLog("登陆成功", "退出系统", ServletUtils.getIpAddr(request), curUser.getName());

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return InternalResourceViewResolver.REDIRECT_URL_PREFIX + "/xdh/rc.html";
	}

}
