package org.guess.security.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.guess.core.Constants;
import org.guess.core.utils.web.ServletUtils;
import org.guess.sys.model.Log;
import org.guess.sys.model.User;
import org.guess.sys.service.LogService;
import org.guess.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

public class UserSetting extends AccessControlFilter {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private LogService logService;
	
	@Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        Subject subject = getSubject(request, response);
        if (subject == null) {
        	logService.addListenerLog("subject为空", "subject为空", ServletUtils.getIpAddr((HttpServletRequest)request), "系统记录");
            return false;
        }

        HttpSession session = ((HttpServletRequest)request).getSession();
        User current_user = (User) session.getAttribute(Constants.CURRENT_USER);
		Object recs = session.getAttribute(Constants.USER_MENUS);
        if(current_user == null || recs == null){
            logService.addListenerLog("用户为空", "用户为空", ServletUtils.getIpAddr((HttpServletRequest)request), "系统记录");

        	String username = (String) subject.getPrincipal();
        	User user = userService.findByLoginId(username);
        	if(user == null || user.getStatus() == Constants.USER_STATUS_LOCK){
                logService.addListenerLog("用户为空判断了状态", "用户为空" + user.getStatus(), ServletUtils.getIpAddr((HttpServletRequest)request), "系统记录");

        		setLoginUrl(Constants.LOGIN_URL);
        		redirectToLogin(request, response);
        		return false;
        	}
        	session.setAttribute(Constants.CURRENT_USER, user);
        	session.setAttribute(Constants.USER_MENUS, user.getMenus());
        }
        return true;
    }

	@Override
	protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue)
			throws Exception {
		return true;
	}

	@Override
	protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
		return true;
	}

}
