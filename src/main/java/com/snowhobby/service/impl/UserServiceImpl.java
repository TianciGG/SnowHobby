package com.snowhobby.service.impl;

import java.util.UUID;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowhobby.db.dao.PersonDao;
import com.snowhobby.db.dao.UserDao;
import com.snowhobby.db.entity.Person;
import com.snowhobby.db.entity.User;
import com.snowhobby.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	@Autowired
	private PersonDao personDao;
	
	@Override
	public User loginUser(User user) {
		// TODO Auto-generated method stub
		User u = userDao.selectByName(user.getName());
		if(u!=null){
			if(u.getPassword().equals(user.getPassword())){
				return u;
			}
		}
		return null;
	}

	@Override
	public Integer registerUser(User u) {
		User user = null;
		try {
			user = userDao.selectByName(u.getName());
			if(user.getName().equals(u.getName())){
				return 4;
			}
		} catch (TooManyResultsException e) {
			// TODO Auto-generated catch block
			return 4;
		} catch(NullPointerException e){
			u.setUid(UUID.randomUUID().toString());
			u.setStatus("0");
			u.setRole("0");
			int i = userDao.insert(u);
			Person p = new Person();
			p.setPid(UUID.randomUUID().toString());
			p.setEmail(u.getName());
			p.setUid(u.getUid());
			p.setImagepath("images/personal/getAvatar.do.jpg");
			personDao.insert(p);
			return i;
		}
		return 0;
	}

	@Override
	public String getPwd(User user) {
		// TODO Auto-generated method stub
		User u = userDao.selectByPrimaryKey(user.getUid());
		String oldPwd = u.getPassword();
		return oldPwd;
	}

	@Override
	public Integer updataPwd(User user) {
		// TODO Auto-generated method stub
		int i = userDao.updateByPrimaryKey(user);
		return i;
	}

}
