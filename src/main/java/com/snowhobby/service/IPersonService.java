package com.snowhobby.service;

import com.snowhobby.db.entity.BackPerson;
import com.snowhobby.db.entity.BackPersonAtt;

public interface IPersonService {

	BackPersonAtt selectByUserId(String userId);

	int insertSelective(BackPerson person);

	int updateByPrimaryKeySelective(BackPerson person);
}
