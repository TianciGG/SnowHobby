package com.snowhobby.db.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.snowhobby.db.entity.Jointeam;
import com.snowhobby.db.entity.JointeamExample;

public interface JointeamDao {
    int countByExample(JointeamExample example);

    int deleteByExample(JointeamExample example);

    int deleteByPrimaryKey(String id);

    int insert(Jointeam record);

    int insertSelective(Jointeam record);

    List<Jointeam> selectByExample(JointeamExample example);

    Jointeam selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Jointeam record, @Param("example") JointeamExample example);

    int updateByExample(@Param("record") Jointeam record, @Param("example") JointeamExample example);

    int updateByPrimaryKeySelective(Jointeam record);

    int updateByPrimaryKey(Jointeam record);

	List<Jointeam> selectByPidOrTid(Jointeam jt);

	List<Jointeam> selectByPid(String pid);
}