package com.snowhobby.controller;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.snowhobby.db.entity.Article;
import com.snowhobby.service.IArticleService;
import com.snowhobby.util.MyRandomId;
import com.snowhobby.util.MyResult;

@Controller
public class ArticleController {
	
	@Autowired
	private IArticleService articleService;
	
	@RequestMapping("/getArticlesTitleInfo.do")
	@ResponseBody
	public ArrayList<Article> getArticlesTitleInfo() {
		return articleService.getAllArticle();
	}
	
	
	@RequestMapping("/publishArticle.do")
	@ResponseBody
	public MyResult publishArticle(Article articleInfo, HttpServletRequest request) {
		/*String uid = (String) request.getSession().getAttribute("uid");
		articleInfo.setUid(uid);*/
		articleInfo.setId(MyRandomId.randomUUID());
		//TODO 后期改为用户session获取的ID
		articleInfo.setUid(MyRandomId.randomUUID());
		Date date = new Date();
		articleInfo.setArticleDate(date);
		return articleService.saveArticle(articleInfo);
	}
}
