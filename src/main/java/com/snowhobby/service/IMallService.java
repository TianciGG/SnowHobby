package com.snowhobby.service;

import java.util.List;

import com.snowhobby.db.entity.Mall;
import com.snowhobby.db.entity.Order;
import com.snowhobby.util.MyResult;

public interface IMallService {

	List<Mall> getAllMall();

	MyResult insertOrder(Order order);

	List<Order> getAllOrderByUser(String string);

}
