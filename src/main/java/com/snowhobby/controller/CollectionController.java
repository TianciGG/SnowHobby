/** 
  * Project Name:SnowHobby 
  * File Name:collectionController.java 
  * Package Name:com.snowhobby.controller 
  * Date:2018年3月7日下午2:47:01 
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
import com.snowhobby.db.entity.User;
import com.snowhobby.service.CollectionService;
import com.snowhobby.service.PersonService;

/** 
  * ClassName:collectionController <br/> 
  * Function: TODO ADD FUNCTION. <br/> 
  * Reason:   TODO ADD REASON. <br/> 
  * Date:     2018年3月7日 下午2:47:01 <br/> 
  * @version   
  * @since    JDK 1.6 
  * @see       
*/
@Controller
@RequestMapping("/collection")
public class CollectionController {

	@Autowired
	private PersonService personService;
	
	@Autowired
	private CollectionService collectionService;
	
	@RequestMapping("/toCollection.do")
	public String toCollection(){
		return "collection";
	}
	
	@RequestMapping("/listTeam.do")
	@ResponseBody
	public ReturnEntity listTeam(HttpServletRequest reqeust){
		ReturnEntity result = new ReturnEntity();
		User u = (User)reqeust.getSession().getAttribute("user");
		if(u!=null){
		Person person = personService.findByUid(u.getUid());
			List list = collectionService.listTeam(person);
			if(list.size()>0){
				result.setList(list);
				result.setStatus("200");
			}else{
				result.setStatus("500");
			}
		}else{
			result.setMsg("请先登录");
		}
		return result;
	}
}
  