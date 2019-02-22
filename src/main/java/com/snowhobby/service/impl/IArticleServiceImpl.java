package com.snowhobby.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowhobby.db.dao.ArticleDAO;
import com.snowhobby.db.entity.Article;
import com.snowhobby.service.IArticleService;
import com.snowhobby.util.MyResult;

@Service
public class IArticleServiceImpl implements IArticleService {
	@Autowired
	private ArticleDAO articleDao;

	@Override
	public ArrayList<Article> getAllArticle() {
		return articleDao.getAllArticle();
	}

	@Override
	public MyResult saveArticle(Article articleInfo) {
		MyResult result = new MyResult();
		try {
			articleDao.save(articleInfo);
			result.setState(MyResult.STATE_OK);
			return result;

		} catch (Exception e) {
			e.printStackTrace();
			result.setState(MyResult.STATE_NOT_OK);
			return result;
		}
	}

}
