/** 
  * Project Name:SnowHobby 
  * File Name:CollectionService.java 
  * Package Name:com.snowhobby.service 
  * Date:2018年3月7日下午4:14:30 
  * Copyright (c) 2018, chenzhou1025@126.com All Rights Reserved. 
*/  
      
package com.snowhobby.service;

import java.util.List;

import com.snowhobby.db.entity.Person;

/** 
  * ClassName:CollectionService <br/> 
  * Function: TODO ADD FUNCTION. <br/> 
  * Reason:   TODO ADD REASON. <br/> 
  * Date:     2018年3月7日 下午4:14:30 <br/> 
  * @author   wenxin 
  * @version   
  * @since    JDK 1.6 
  * @see       
*/
public interface CollectionService {

	List listTeam(Person person);

}
  