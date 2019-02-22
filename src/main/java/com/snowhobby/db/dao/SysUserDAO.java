package com.snowhobby.db.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.snowhobby.db.entity.SysUser;
import com.snowhobby.db.entity.UserManage;

public interface SysUserDAO {
	int deleteByPrimaryKey(String userId);

	int insert(SysUser record);

	int insertSelective(SysUser record);

	SysUser selectByPrimaryKey(String userId);

	int updateByPrimaryKeySelective(SysUser record);

	int updateByPrimaryKey(SysUser record);

	// 补充自己写
	String selectCountSysUser();

	SysUser loginUser(SysUser user);

	Object checkOriginalPwd(SysUser user);

	List<SysUser> selectAllSysUser(SysUser user);

	List<UserManage> selectUserPerson(@Param("userName") String userName);
}