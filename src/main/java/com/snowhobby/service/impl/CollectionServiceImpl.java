/** 
  * Project Name:SnowHobby 
  * File Name:CollectionServiceImpl.java 
  * Package Name:com.snowhobby.service.impl 
  * Date:2018年3月7日下午4:14:48 
  * Copyright (c) 2018, chenzhou1025@126.com All Rights Reserved. 
*/  
      
package com.snowhobby.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowhobby.db.dao.JointeamDao;
import com.snowhobby.db.dao.TeamDao;
import com.snowhobby.db.entity.Jointeam;
import com.snowhobby.db.entity.Person;
import com.snowhobby.db.entity.Team;
import com.snowhobby.service.CollectionService;

/** 
  * ClassName:CollectionServiceImpl <br/> 
  * Function: TODO ADD FUNCTION. <br/> 
  * Reason:   TODO ADD REASON. <br/> 
  * Date:     2018年3月7日 下午4:14:48 <br/> 
  * @version   
  * @since    JDK 1.6 
  * @see       
*/
@Service
public class CollectionServiceImpl implements CollectionService {

	@Autowired
	private JointeamDao joinDao;
	@Autowired
	private TeamDao teamDao;
	
	@Override
	public List listTeam(Person person) {
		// TODO Auto-generated method stub
		List result = new ArrayList<>();
		List<Jointeam> list = joinDao.selectByPid(person.getPid());
		for (int i = 0; i < list.size(); i++) {
			Team team = teamDao.selectByPrimaryKey(list.get(i).getTeamid());
			result.add(team);
		}
		return result;
	}

}
  