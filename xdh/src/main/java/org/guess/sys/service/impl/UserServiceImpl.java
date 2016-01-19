package org.guess.sys.service.impl;

import java.util.HashSet;
import java.util.Set;

import org.guess.core.Constants;
import org.guess.core.service.BaseServiceImpl;
import org.guess.core.utils.security.Coder;
import org.guess.sys.dao.UserDao;
import org.guess.sys.model.Role;
import org.guess.sys.model.User;
import org.guess.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<User, Long> implements UserService {

	@Autowired
	public UserDao userDao;
	
	@Override
	public User findByLoginId(String loginId) {
		return userDao.findUniqueBy("loginId", loginId);
	}

	@Override
	public int changeUserStatus(Long id) {
		User user = userDao.get(id);
		if(0 == user.getStatus()){
			user.setStatus(1);
		}else if( 1 == user.getStatus()){
			user.setStatus(0);
		}else if( 2 == user.getStatus()){
			user.setStatus(3);
			
			Set<Role> roles = new HashSet<Role>();
			Role role = new Role();
			role.setId(Long.valueOf("12"));
			roles.add(role);
			user.setRoles(roles);
			
		}else if( 3 == user.getStatus()){
			user.setStatus(2);
			
			Set<Role> roles = new HashSet<Role>();
			Role role = new Role();
			role.setId(Long.valueOf("11"));
			roles.add(role);
			user.setRoles(roles);
		}
		
		userDao.save(user);
		return user.getStatus();
	}

	@Override
	public void save(User user, String[] roleIds , String oldpwd) throws Exception {
		this.save(user);
		//修改密码时，判断
		if (user.getId() != null) {
			if (!oldpwd.equals(user.getPasswd())) {
				user.setPasswd(Coder.encryptMD5(user.getLoginId() + user.getPasswd()));
			}
		} else {
			user.setPasswd(Coder.encryptMD5(user.getLoginId() + user.getPasswd()));
		}
		//插入角色
		if(roleIds != null){
			Set<Role> roles = new HashSet<Role>();
			for (String roleId : roleIds) {
				Role role = new Role();
				role.setId(Long.valueOf(roleId));
				roles.add(role);
			}
			user.setRoles(roles);
		}
	}
}