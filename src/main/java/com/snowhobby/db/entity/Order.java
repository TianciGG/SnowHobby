package com.snowhobby.db.entity;

import java.util.Date;

public class Order {
	private String id;
	//用户id
	private String uid;
	//商品id
	private String mid;
	//发货状态  0没有发货  1发货  
	private int send;
	//是否是删除订单  0删除  1没有删除
	private int deleteFlag = 1;
	
	private Date createDate;
	
	private int mallNumber = 1;
	
	private Double price;
	
	private String title;
	
	private String atturl;
	
	
	
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getAtturl() {
		return atturl;
	}
	public void setAtturl(String atturl) {
		this.atturl = atturl;
	}
	public int getDeleteFlag() {
		return deleteFlag;
	}
	public void setDeleteFlag(int deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public int getMallNumber() {
		return mallNumber;
	}
	public void setMallNumber(int mallNumber) {
		this.mallNumber = mallNumber;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getSend() {
		return send;
	}
	public void setSend(int send) {
		this.send = send;
	}
	
}
