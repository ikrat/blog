package net.study.blog.service;

import java.util.List;
import java.util.Map;

import net.study.blog.entity.Article;
import net.study.blog.entity.Category;
import net.study.blog.entity.Comment;
import net.study.blog.exception.RedirectToValidUrlException;
import net.study.blog.exception.ValidateException;
import net.study.blog.form.CommentForm;
import net.study.blog.model.Items;

public interface BusinessService {

	Map<Integer, Category> mapCategories();
	
	Items <Article> listArticles(int offset, int limit);
	
	Items<Article> listArticlesByCategory(String categoryUrl, int offset, int limit);
	
	/**
	 * @return null if entity not found
	 */
	
	Category findCategoryByUrl(String categoryUrl);
	
	Items<Article> listArticlesBySearchQuery(String searchQuery, int offset, int limit);
	
	/**
	 * @return null if entity not found
	 */
	
	Article viewArticle(Long idArticle, String requestUrl) throws RedirectToValidUrlException;
	
	List<Comment> listComments(long idArticle, int offset, int limit);
	
	Comment createComment (CommentForm form) throws ValidateException;
}
