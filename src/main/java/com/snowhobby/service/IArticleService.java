package com.snowhobby.service;

import java.util.ArrayList;

import com.snowhobby.db.entity.Article;
import com.snowhobby.util.MyResult;

public interface IArticleService {

	ArrayList<Article> getAllArticle();

	MyResult saveArticle(Article articleInfo);

}
