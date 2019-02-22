package com.snowhobby.util;
/**
 * springMVC返回结果类
 * @author 马晓晨
 *
 */
public class MyResult {
	private  int state;
	
	public static final int STATE_OK = 1;
	
	public static final int STATE_NOT_OK = 0;

	public  int getState() {
		return state;
	}

	public  void setState(int state) {
		this.state = state;
	}
			
	

}
