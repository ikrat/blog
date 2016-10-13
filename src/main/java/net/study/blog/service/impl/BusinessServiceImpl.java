package net.study.blog.service.impl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import net.study.blog.dao.SQLDAO;
import net.study.blog.entity.Account;
import net.study.blog.entity.Article;
import net.study.blog.entity.Category;
import net.study.blog.entity.Comment;
import net.study.blog.exception.ApplicationException;
import net.study.blog.exception.RedirectToValidUrlException;
import net.study.blog.form.CommentForm;
import net.study.blog.model.Items;
import net.study.blog.model.SocialAccount;
import net.study.blog.service.AvatarService;
import net.study.blog.service.BusinessService;
import net.study.blog.service.SocialService;

class BusinessServiceImpl implements BusinessService {
	private static final Logger LOGGER = LoggerFactory.getLogger(BusinessServiceImpl.class);
	private final DataSource dataSource;
	private final SQLDAO sql;
	private final SocialService socialService;
	private final AvatarService avatarService;

	BusinessServiceImpl(ServiceManager serviceManager) {
		super();
		this.dataSource = serviceManager.dataSource;
		this.socialService = serviceManager.socialService;
		this.avatarService = serviceManager.avatarService;
		this.sql = new SQLDAO();
	}

	@Override
	public Map<Integer, Category> mapCategories() {
		try (Connection c = dataSource.getConnection()) {
			return sql.mapCategories(c);
		} catch (SQLException e) {
			throw new ApplicationException("Can`t execute db command: " + e.getMessage(), e);
		}
	}

	@Override
	public Items<Article> listArticles(int offset, int limit) {
		try (Connection c = dataSource.getConnection()) {
			Items<Article> items = new Items<>();
			items.setItems(sql.listArticles(c, offset, limit));
			items.setCount(sql.countArticles(c));
			return items;
		} catch (SQLException e) {
			throw new ApplicationException("Can`t execute db command1: " + e.getMessage(), e);
		}
	}

	@Override
	public Items<Article> listArticlesByCategory(String categoryUrl, int offset, int limit) {
		try (Connection c = dataSource.getConnection()) {
			Items<Article> items = new Items<>();
			items.setItems(sql.listArticlesByCategory(c, categoryUrl, offset, limit));
			items.setCount(sql.countArticlesByCategory(c, categoryUrl));
			return items;
		} catch (SQLException e) {
			throw new ApplicationException("Can`t execute db command2: " + e.getMessage(), e);
		}
	}

	@Override
	public Category findCategoryByUrl(String categoryUrl) {
		try(Connection c = dataSource.getConnection()) {
			return sql.findCategoryByUrl(c, categoryUrl);
		} catch (SQLException e) {
			throw new ApplicationException("Can`t execute db command: " + e.getMessage(), e);
		}
	}
	
	@Override
	public Items<Article> listArticlesBySearchQuery(String searchQuery, int offset, int limit) {
		try(Connection c = dataSource.getConnection()){
			Items<Article> items = new Items<>();
			items.setItems(sql.listArticlesBySearchQuery(c, searchQuery, offset, limit));
			items.setCount(sql.countArticlesBySearchQuery(c, searchQuery));
			return items;
		} catch (SQLException e) {
			throw new ApplicationException("Can`t execute db command: "+ e.getMessage(), e);
		}
	}
	
	@Override
	public Article viewArticle(Long idArticle, String requestUrl) throws RedirectToValidUrlException {
		try(Connection c = dataSource.getConnection()){
			Article article = sql.findArticleById(c, idArticle);
			if (article == null) {
				return null;
			}
			if(!article.getArticleLink().equals(requestUrl)) {
				throw new RedirectToValidUrlException(article.getArticleLink());
			} else {
				article.setViews(article.getViews()+1);
				sql.updateArticleViews(c, article);
				c.commit();
				return article;
			}
		} catch (SQLException e) {
			throw new ApplicationException("Can`t execute db command: "+e.getMessage(), e);
		}
	}
	
	@Override
	public List<Comment> listComments(long idArticle, int offset, int limit) {
		try(Connection c = dataSource.getConnection()){
			return sql.listComments(c, idArticle, offset, limit);
		} catch (SQLException e) {
			throw new ApplicationException("Can`t execute db command: "+e.getMessage(),e);
		}
	}
	
	@Override
	public Comment createComment(CommentForm form) {
		String newAvatarPath = null;
		try (Connection c = dataSource.getConnection()){
			SocialAccount socialAccount = socialService.getSocialAccount(form.getAuthToken());
			Account account = sql.findAccountByEmail(c, socialAccount.getEmail());
			if(account == null) {
				newAvatarPath = avatarService.downloadAvatar(socialAccount.getAvatar());
				account = sql.createNewAccount(c, socialAccount.getEmail(), socialAccount.getName(), newAvatarPath);
			}
			Comment comment = sql.createComment(c, form, account.getId());
			comment.setAccount(account);
			Article article = sql.findArticleForNewCommentNotification(c, form.getIdArticle());
			article.setComments(sql.countComments(c, article.getId()));
			sql.updateArticleComments(c, article);
			c.commit();
			//after commit
			//TODO Send new comment notification
			return comment;
		} catch (SQLException | RuntimeException | IOException e) {
			if(avatarService.deleteAvatarIfExists(newAvatarPath)){
				LOGGER.info("Avatar "+newAvatarPath+" deleted");
			}
			throw new ApplicationException("Can`t create new comment: "+e.getMessage(), e);
		}
	}
}
