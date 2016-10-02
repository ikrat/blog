package net.study.blog.service;

import java.util.Map;

import net.study.blog.entity.Article;
import net.study.blog.entity.Category;
import net.study.blog.model.Items;

public interface BusinessService {

	Map<Integer, Category> mapCategories();
	
	Items <Article> listArticles(int offset, int limit);
	
	Items<Article> listArticlesByCategory(String categoryUrl, int offset, int limit);
	
	Category findCategoryByUrl(String categoryUrl);
	
	Items<Article> listArticlesBySearchQuery(String searchQuery, int offset, int limit);
}
