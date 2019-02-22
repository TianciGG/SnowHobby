package com.snowhobby.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.snowhobby.db.entity.Mall;
import com.snowhobby.db.entity.Order;
import com.snowhobby.service.IMallService;
import com.snowhobby.util.MyRandomId;
import com.snowhobby.util.MyResult;

@Controller
public class MallController {
	@Autowired
	private IMallService mallService;
	
	/**
	 * 获取所有商品信息
	 * @return
	 */
	@RequestMapping("/getAllMall.do")
	@ResponseBody
	public List<Mall> getAllMall() {
		return mallService.getAllMall();
	}
	
	/**
	 * 购买商品
	 * @param order
	 * @param request
	 * @return
	 */
	@RequestMapping("/purchase.do")
	@ResponseBody
	public MyResult purchase(Order order, HttpServletRequest request) {
		//TODO 天赐打开这条注释，从session中获取用户信息
//		String uid = (String) request.getSession().getAttribute("uid");
		order.setUid("1");
		order.setId(MyRandomId.randomUUID());
		order.setCreateDate(new Date());
		return mallService.insertOrder(order);
	}
	
	/**
	 * 根据session的用户获取订单信息
	 * @param request
	 * @return
	 */
	@RequestMapping("getAllOrderByUser.do")
	@ResponseBody
	public List<Order> getAllOrderByUser(HttpServletRequest request) {
		//TODO 天赐打开这条注释，从session中获取用户信息
//		String uid = (String) request.getSession().getAttribute("uid");
		return mallService.getAllOrderByUser("1");
	}
}
