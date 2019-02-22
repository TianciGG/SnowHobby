package com.snowhobby.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowhobby.db.dao.AttenchmentDAO;
import com.snowhobby.db.entity.Mall;
import com.snowhobby.db.entity.Order;
import com.snowhobby.service.IMallService;
import com.snowhobby.util.MyResult;

@Service
public class MallServiceImpl implements IMallService{
	
	@Autowired
	private AttenchmentDAO attenchmentDAO;
	/**
	 * 获取所有商品信息
	 */
	@Override
	public List<Mall> getAllMall() {
		return attenchmentDAO.getAllMall();
	}
	
	/**
	 * 购买商品
	 */
	@Override
	public MyResult insertOrder(Order order) {
		MyResult result = new MyResult();
		try {
			attenchmentDAO.insertOrder(order);
			result.setState(MyResult.STATE_OK);
		} catch (Exception e) {
			result.setState(MyResult.STATE_NOT_OK);
		}
		return result;
	}
	
	/**
	 * 通过用户id获取商品
	 */
	@Override
	public List<Order> getAllOrderByUser(String uid) {
		return attenchmentDAO.getAllOrderByUid(uid);
	}

}
