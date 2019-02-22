package com.snowhobby.db.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.snowhobby.db.entity.Team;
import com.snowhobby.db.entity.TeamExample;

public interface TeamDao {
    int countByExample(TeamExample example);

    int deleteByExample(TeamExample example);

    int deleteByPrimaryKey(String tid);

    int insert(Team record);

    int insertSelective(Team record);

    List<Team> selectByExample(TeamExample example);

    Team selectByPrimaryKey(String tid);

    int updateByExampleSelective(@Param("record") Team record, @Param("example") TeamExample example);

    int updateByExample(@Param("record") Team record, @Param("example") TeamExample example);

    int updateByPrimaryKeySelective(Team record);

    int updateByPrimaryKey(Team record);

	List<Team> selectAll();
}