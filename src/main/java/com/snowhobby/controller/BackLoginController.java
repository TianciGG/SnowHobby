package com.snowhobby.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.snowhobby.db.entity.BackPersonAtt;
import com.snowhobby.db.entity.SysUser;
import com.snowhobby.service.IPersonService;
import com.snowhobby.service.ISysUserService;

@Controller
public class BackLoginController {
	@Resource
	private ISysUserService sysUserService;
	@Resource
	private IPersonService personService;

	// 登录页面，登录按钮所造成的请求
	@RequestMapping(value = { "mylogin.do" }, method = { RequestMethod.GET })
	public void login(SysUser user, HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("UTF-8");
		SysUser mySysUser = sysUserService.loginUser(user);
		String result = "";
		if (mySysUser != null) {
			BackPersonAtt myperson = personService.selectByUserId(mySysUser.getUserId());
			HttpSession session = request.getSession();
			session.setAttribute("myuser", mySysUser);
			session.setAttribute("myperson", myperson);
			result = "allok";
		} else {
			result = "myfail";
		}
		response.getWriter().write(result);
	}
}
