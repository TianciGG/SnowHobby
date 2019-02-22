package com.snowhobby.db.dao;

import java.util.List;

import com.snowhobby.db.entity.Attenchment;
import com.snowhobby.db.entity.Mall;
import com.snowhobby.db.entity.Order;

public interface AttenchmentDAO {
	int deleteByPrimaryKey(String attid);

	int insert(Attenchment record);

	int insertSelective(Attenchment record);

	Attenchment selectByPrimaryKey(String attid);

	int updateByPrimaryKeySelective(Attenchment record);

	int updateByPrimaryKey(Attenchment record);

	// 自写补充部分
	List<Attenchment> getAllAttByTid(String agencyId);

	List<Mall> getAllMall();

	void insertOrder(Order order);

	List<Order> getAllOrderByUid(String uid);
}