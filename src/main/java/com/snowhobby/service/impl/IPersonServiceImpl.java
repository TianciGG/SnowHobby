package com.snowhobby.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.snowhobby.db.dao.BackPersonDAO;
import com.snowhobby.db.entity.BackPerson;
import com.snowhobby.db.entity.BackPersonAtt;
import com.snowhobby.service.IPersonService;

@Service
public class IPersonServiceImpl implements IPersonService {

	@Resource
	private BackPersonDAO personDAO;

	@Override
	public BackPersonAtt selectByUserId(String userId) {
		return personDAO.selectByUserId(userId);
	}

	@Override
	public int insertSelective(BackPerson person) {
		return personDAO.insertSelective(person);
	}

	@Override
	public int updateByPrimaryKeySelective(BackPerson person) {
		return personDAO.updateByPrimaryKeySelective(person);
	}
}
