package com.snowhobby.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.snowhobby.db.entity.ReturnEntity;
import com.snowhobby.db.entity.User;
import com.snowhobby.service.UserService;

@Controller
@RequestMapping("/user")
public class LoginUserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/toRegister.do")
	public String toRegister(){
		return "userRegister";
	}
	
	@RequestMapping("/toIndex.do")
	public String toIndex(){
		return "index";
	}
	
	@RequestMapping("/toLoginUser.do")
	public String toLoginUser(){
		return "userLogin";
	}
	
	@RequestMapping("/toInformation.do")
	public String toInformation(){
		return "information";
	}
	
	@RequestMapping("/toUpdatePwd.do")
	public String toUpdatePwd(){
		return "revisePwd";
	}
	
	/**
	 * 
	  * loginUser:(用户登录). <br/> 
	  * @param request
	  * @param user
	  * @return 
	  * @since JDK 1.8
	 */
	@RequestMapping("/loginUser.do")
	@ResponseBody
	public ReturnEntity loginUser(HttpServletRequest request,User user){
		ReturnEntity result = new ReturnEntity();
		User u = null;
		if(user!=null){
			u = userService.loginUser(user);
		}
		if(u!=null){
			request.getSession().setAttribute("user", u);
			result.setObj(u);
			result.setStatus("200");
		}else{
			result.setObj(null);
			result.setStatus("500");
		}
		return result;
	}
	
	/**
	 * 
	  * registerUser:(注册新用户). <br/> 
	  * @param u
	  * @return 
	  * @since JDK 1.8
	 */
	@RequestMapping("/registerUser.do")
	@ResponseBody
	public ReturnEntity registerUser(User u){
		ReturnEntity result = new ReturnEntity();
		Integer i = 0;
		if(u!=null){
			i = userService.registerUser(u);
			result.setObj(i);
			result.setMsg("注册成功");
			if(i==4){
				result.setMsg("账号已存在");
			}
			result.setStatus("200");
		}else{
			result.setMsg("注册失败");
			result.setStatus("500");
		}
		return result;
	}
	
	/**
	 * 
	  * checkOld:(检查原始密码是否正确). <br/> 
	  * @param u
	  * @param request
	  * @return 
	  * @since JDK 1.8
	 */
	@RequestMapping("/checkOld.do")
	@ResponseBody
	public ReturnEntity checkOld(User u,HttpServletRequest request){
		User user = (User) request.getSession().getAttribute("user");
		ReturnEntity result = new ReturnEntity();
		if(user!=null){
			String oldPwd = u.getPassword();
			String pwd = userService.getPwd(user);
			if(oldPwd.equals(pwd)){
				result.setStatus("200");
			}else{
				result.setMsg("密码输入错误");
			}
		}else{
			result.setMsg("请先登录！");
		}
		return result;
	}
	
	/**
	 * 
	  * updataPwd:(修改密码). <br/> 
	  * @param u
	  * @param request
	  * @return 
	  * @since JDK 1.8
	 */
	@RequestMapping("/updataPwd.do")
	@ResponseBody
	public ReturnEntity updataPwd(User u,HttpServletRequest request){
		User user = (User) request.getSession().getAttribute("user");
		ReturnEntity result = new ReturnEntity();
		Integer i = null;
		if(user!=null){
			user.setPassword(u.getPassword());
			i = userService.updataPwd(user);
			if(i==1){
				result.setObj(user);
				result.setMsg("修改成功");
				result.setStatus("200");
			}else{
				result.setMsg("修改失败");
				result.setMsg("500");
			}
		}
		return result;
	}
}
