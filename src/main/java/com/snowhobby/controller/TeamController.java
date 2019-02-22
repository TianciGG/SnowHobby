/** 
  * Project Name:SnowHobby 
  * File Name:TeamController.java 
  * Package Name:com.snowhobby.controller 
  * Date:2018年3月6日上午11:24:11 
  * Copyright (c) 2018, chenzhou1025@126.com All Rights Reserved. 
*/  
      
package com.snowhobby.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.snowhobby.db.entity.Person;
import com.snowhobby.db.entity.ReturnEntity;
import com.snowhobby.db.entity.Team;
import com.snowhobby.db.entity.User;
import com.snowhobby.service.PersonService;
import com.snowhobby.service.TeamService;

/** 
  * ClassName:TeamController <br/> 
  * Date:     2018年3月6日 上午11:24:11 <br/> 
  * @version   
  * @since    JDK 1.6 
  * @see       
*/
@Controller
@RequestMapping("/team")
public class TeamController {

	@Autowired
	private TeamService teamService;
	@Autowired
	private PersonService personService;
	
	@RequestMapping("/toTeamTrip.do")
	public String toTeamTrip(){
		return "teamTrip";
	}	
	
	/**
	 * 
	  * findAll:(从数据库获取所有团队). <br/> 
	  * @return 
	  * @since JDK 1.8
	 */
	@RequestMapping("/findAll.do")
	@ResponseBody
	public ReturnEntity findAll(){
		ReturnEntity result = new ReturnEntity();
		List list = teamService.findAll();
		if(list!=null&&list.size()>0){
			result.setList(list);
			result.setMsg("成功");
			result.setStatus("200");
			
		}else{
			result.setMsg("没有数据");
			result.setStatus("500");
		}
		return result;
	}
	
	/**
	 * 
	  * joinTeam:(加入团队). <br/> 
	  * @param t
	  * @param request
	  * @return 
	  * @since JDK 1.8
	 */
	@RequestMapping("/joinTeam.do")
	@ResponseBody
	public ReturnEntity joinTeam(Team t,HttpServletRequest request){
		ReturnEntity result = new ReturnEntity();
		User u = (User)request.getSession().getAttribute("user");
		Integer i = null;
		if(u!=null){
			String uid = u.getUid();
			Person p = personService.findByUid(uid);
			i = teamService.joinTeam(p,t);
			if(i==1){
				result.setMsg("加入成功");
			}else if(i==666){
				result.setMsg("已加入该团队");
			}else{
				result.setMsg("加入失败");
			}
		}else{
			result.setMsg("请先登录！");
		}
		return result;
	}
}
  