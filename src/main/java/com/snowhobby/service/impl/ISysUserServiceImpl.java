package com.snowhobby.service.impl;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.snowhobby.db.dao.SysUserDAO;
import com.snowhobby.db.entity.SysUser;
import com.snowhobby.db.entity.UserManage;
import com.snowhobby.service.ISysUserService;

@Service
public class ISysUserServiceImpl implements ISysUserService {
	@Resource
	private SysUserDAO sysUserDAO;

	@Override
	public boolean addUser(SysUser user) {
		user.setUserId(UUID.randomUUID().toString());
		user.setRole("2");
		return sysUserDAO.insertSelective(user) > 0 ? true : false;
	}

	@Override
	public boolean updateUser(SysUser user) {
		return sysUserDAO.updateByPrimaryKeySelective(user) > 0 ? true : false;
	}

	@Override
	public SysUser loginUser(SysUser user) {
		return sysUserDAO.loginUser(user);
	}

	@Override
	public int userReview(String userId, String personId) {
		return 0;
	}

	@Override
	public List<SysUser> getAllSysUser(SysUser user) {
		List<SysUser> userList = sysUserDAO.selectAllSysUser(user);
		return userList;
	}

	@Override
	public boolean checkOriginalPwd(SysUser user) {
		return sysUserDAO.checkOriginalPwd(user) != null ? true : false;
	}

	@Override
	public String selectCountSysUser() {
		return sysUserDAO.selectCountSysUser();
	}

	@Override
	public SysUser getSysUserById(String userId) {
		return null;
	}

	@Override
	public List<UserManage> selectUserPerson(String userName) {
		return sysUserDAO.selectUserPerson(userName);
	}

	@Override
	public int deleteUser(String userId) {
		return sysUserDAO.deleteByPrimaryKey(userId);
	}
}
