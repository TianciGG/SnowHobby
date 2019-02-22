/** 
  * Project Name:SnowHobby 
  * File Name:ResultVO.java 
  * Package Name:com.snowhobby.db.entity 
  * Date:2018年3月5日上午11:16:34 
  * Copyright (c) 2018, chenzhou1025@126.com All Rights Reserved. 
*/  
      
package com.snowhobby.db.entity;  
public class ResultVO<T> {
    //错误码
    private Integer code;
    //提示信息
    private String msg;
    //返回的具体内容
    private T data;
    public Integer getCode() {
        return code;
    }
    public void setCode(Integer code) {
        this.code = code;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
    public T getData() {
        return data;
    }
    public void setData(T data) {
        this.data = data;
    }
}
  