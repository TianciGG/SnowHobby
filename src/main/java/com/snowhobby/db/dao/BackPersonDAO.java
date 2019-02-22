package com.snowhobby.db.dao;

import com.snowhobby.db.entity.BackPerson;
import com.snowhobby.db.entity.BackPersonAtt;

public interface BackPersonDAO {
	int deleteByPrimaryKey(String presonId);

	int insert(BackPerson record);

	int insertSelective(BackPerson record);

	BackPerson selectByPrimaryKey(String presonId);

	int updateByPrimaryKeySelective(BackPerson record);

	int updateByPrimaryKey(BackPerson record);

	// 自写补充部分
	BackPersonAtt selectByUserId(String userId);
}