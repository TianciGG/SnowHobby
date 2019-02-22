package com.snowhobby.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.snowhobby.db.entity.BackPersonAtt;
import com.snowhobby.db.entity.SysUser;
import com.snowhobby.service.IPersonService;

@Controller
public class BackJumpController {
	@Resource
	private IPersonService personService;

	// index.jsp跳转到登录页面的请求
	@RequestMapping(value = "goToMyLoginPage.do", method = RequestMethod.GET)
	public String toIndex() {
		return "back-mylogin";
	}

	// 登录页面登录成功跳转到后台首页的请求
	@RequestMapping(value = "goToMainPage.do", method = RequestMethod.GET)
	public String goToMainPage() {
		return "back-main";
	}

	// 跳转到个人中心页面的请求
	@RequestMapping(value = "goToPersonalCenterPage.do", method = RequestMethod.GET)
	public String goToPersonalCenter(HttpServletRequest request) {
		SysUser myUser = (SysUser) request.getSession().getAttribute("myuser");
		BackPersonAtt myPerson = personService.selectByUserId(myUser
				.getUserId());
		request.getSession().setAttribute("myperson", myPerson);
		return "back-personalCenter";
	}

	// 跳转到密码修改页面的请求
	@RequestMapping(value = "goToChangePwdPage.do", method = RequestMethod.GET)
	public String goToChangePwd() {
		return "back-changePwd";
	}

	// 跳转到用户管理页面的请求
	@RequestMapping(value = "goToUserManagePage.do", method = RequestMethod.GET)
	public String goToUserManage() {
		return "back-userManage";
	}

	// 退出登录到首页的请求
	@RequestMapping(value = "myQuit.do", method = RequestMethod.GET)
	public String myQuit(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.getSession().invalidate();
		return "back-mylogin";
	}

	// 跳转到数据字典管理页面的请求
	@RequestMapping(value = "goToDicListPage.do", method = RequestMethod.GET)
	public String goToDicList() {
		return "back-dicList";
	}

	@RequestMapping(value = "goToForumPage.do", method = RequestMethod.GET)
	public String goToForum() {
		return "forum";
	}

	@RequestMapping(value = "goToMallPage.do", method = RequestMethod.GET)
	public String goToMall() {
		return "mall";
	}

	@RequestMapping(value = "goToPurchasedPage.do", method = RequestMethod.GET)
	public String goToPurchased() {
		return "purchased";
	}

	@RequestMapping(value = "goToPublishCardPage.do", method = RequestMethod.GET)
	public String goToPublishCard() {
		return "publishCard";
	}
}
