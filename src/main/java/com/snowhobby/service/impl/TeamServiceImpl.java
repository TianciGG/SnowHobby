/** 
  * Project Name:SnowHobby 
  * File Name:TeamServiceImpl.java 
  * Package Name:com.snowhobby.service.impl 
  * Date:2018年3月6日下午6:02:48 
  * Copyright (c) 2018, chenzhou1025@126.com All Rights Reserved. 
*/  
      
package com.snowhobby.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowhobby.db.dao.JointeamDao;
import com.snowhobby.db.dao.TeamDao;
import com.snowhobby.db.entity.Jointeam;
import com.snowhobby.db.entity.Person;
import com.snowhobby.db.entity.Team;
import com.snowhobby.service.TeamService;

/** 
  * ClassName:TeamServiceImpl <br/> 
  * Function: TODO ADD FUNCTION. <br/> 
  * Reason:   TODO ADD REASON. <br/> 
  * Date:     2018年3月6日 下午6:02:48 <br/> 
  * @author   wenxin 
  * @version   
  * @since    JDK 1.6 
  * @see       
*/
@Service
public class TeamServiceImpl implements TeamService{

	@Autowired
	private TeamDao teamDao;
	
	@Autowired
	private JointeamDao joinTeamDao;
	
	@Override
	public List<Team> findAll() {
		List<Team> list = teamDao.selectAll();
		return list;
	}
	@Override
	public Integer joinTeam(Person p, Team t) {
		Jointeam jt = new Jointeam();
		jt.setId(UUID.randomUUID().toString());
		jt.setPersonid(p.getPid());
		jt.setTeamid(t.getTid());
		List<Jointeam> j = joinTeamDao.selectByPidOrTid(jt);
		if(j.size()==0){
			int insert = joinTeamDao.insert(jt);
			return insert;
		}
		return 666;//代表已经加入该团队了
	}

}
  