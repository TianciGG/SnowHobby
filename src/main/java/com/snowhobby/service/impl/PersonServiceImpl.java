/** 
  * Project Name:SnowHobby 
  * File Name:PersonServiceImpl.java 
  * Package Name:com.snowhobby.service.impl 
  * Date:2018年3月5日下午3:49:13 
  * Copyright (c) 2018, chenzhou1025@126.com All Rights Reserved. 
*/  
      
package com.snowhobby.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowhobby.db.dao.PersonDao;
import com.snowhobby.db.dao.UserDao;
import com.snowhobby.db.entity.Person;
import com.snowhobby.db.entity.User;
import com.snowhobby.service.PersonService;

/** 
  * ClassName:PersonServiceImpl <br/> 
  * Function: TODO ADD FUNCTION. <br/> 
  * Reason:   TODO ADD REASON. <br/> 
  * Date:     2018年3月5日 下午3:49:13 <br/> 
  * @author   wenxin 
  * @version   
  * @since    JDK 1.6 
  * @see       
*/
@Service
public class PersonServiceImpl implements PersonService {

	@Autowired
	private PersonDao personDao;
	@Autowired
	private UserDao userDao;
	
	@Override
	public Person findByUid(String uid) {
		// TODO Auto-generated method stub
		return personDao.selectByUid(uid);
	}

	@Override
	public void updateByPid(Person p) {
		// TODO Auto-generated method stub
		personDao.updateByPrimaryKey(p);
		User u = userDao.selectByPrimaryKey(p.getUid());
		u.setStatus("1");
		userDao.updateByPrimaryKey(u);
	}

}
  