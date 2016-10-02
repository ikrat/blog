package net.study.blog.service.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

import javax.sql.DataSource;

import net.study.blog.dao.SQLDAO;
import net.study.blog.entity.Article;
import net.study.blog.entity.Category;
import net.study.blog.exception.ApplicationException;
import net.study.blog.model.Items;
import net.study.blog.service.BusinessService;

class BusinessServiceImpl implements BusinessService {
	private final DataSource dataSource;
	private final SQLDAO sql;
	
	BusinessServiceImpl(ServiceManager serviceManager) {
		super();
		this.dataSource = serviceManager.dataSource;
		this.sql = new SQLDAO();
	}



	@Override
	public Map<Integer, Category> mapCategories() {
		try (Connection c = dataSource.getConnection()){
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
			throw new ApplicationException("Can`t execute db command: "+e.getMessage(), e);
		}
	}
}
