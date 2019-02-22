package com.snowhobby.controller;

import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.snowhobby.db.entity.BackPerson;
import com.snowhobby.service.IPersonService;

@Controller
@RequestMapping("/logic")
public class BackPersonController {
	@Resource
	private IPersonService personService;

	// 个人中心页面，提交按钮所造成的请求
	@RequestMapping(value = "/updatePerson.do")
	@ResponseBody
	public boolean updatePersonInfo(BackPerson person, HttpServletRequest request) {
		if (person.getPresonId() == null || "".equals(person.getPresonId())) {
			person.setPresonId(UUID.randomUUID().toString());
			return personService.insertSelective(person) > 0 ? true : false;
		}
		return personService.updateByPrimaryKeySelective(person) > 0 ? true
				: false;
	}
}
