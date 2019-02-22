/** 
  * Project Name:SnowHobby 
  * File Name:TeamService.java 
  * Package Name:com.snowhobby.service 
  * Date:2018年3月6日下午6:02:23 
  * Copyright (c) 2018, chenzhou1025@126.com All Rights Reserved. 
*/  
      
package com.snowhobby.service;

import java.util.List;

import com.snowhobby.db.entity.Person;
import com.snowhobby.db.entity.Team;

/** 
  * ClassName:TeamService <br/> 
  * Function: TODO ADD FUNCTION. <br/> 
  * Reason:   TODO ADD REASON. <br/> 
  * Date:     2018年3月6日 下午6:02:23 <br/> 
  * @author   wenxin 
  * @version   
  * @since    JDK 1.6 
  * @see       
*/
public interface TeamService {

	List<Team> findAll();

	Integer joinTeam(Person p, Team t);

}
  