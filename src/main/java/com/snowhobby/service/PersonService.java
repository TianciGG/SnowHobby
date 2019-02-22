/** 
  * Project Name:SnowHobby 
  * File Name:PersonService.java 
  * Package Name:com.snowhobby.service 
  * Date:2018年3月5日下午3:48:56 
  * Copyright (c) 2018, chenzhou1025@126.com All Rights Reserved. 
*/  
      
package com.snowhobby.service;

import com.snowhobby.db.entity.Person;

/** 
  * ClassName:PersonService <br/> 
  * Function: TODO ADD FUNCTION. <br/> 
  * Reason:   TODO ADD REASON. <br/> 
  * Date:     2018年3月5日 下午3:48:56 <br/> 
  * @author   wenxin 
  * @version   
  * @since    JDK 1.6 
  * @see       
*/
public interface PersonService {

	Person findByUid(String uid);

	void updateByPid(Person p);

}
  