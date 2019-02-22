package com.snowhobby.db.dao;

import java.util.ArrayList;

import com.snowhobby.db.entity.Article;

public interface ArticleDAO {
	ArrayList<Article> getAllArticle();

	void save(Article articleInfo); 
}
