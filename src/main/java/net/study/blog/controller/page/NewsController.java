package net.study.blog.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.study.blog.Constants;
import net.study.blog.controller.AbstractController;
import net.study.blog.entity.Article;
import net.study.blog.entity.Category;
import net.study.blog.model.Items;


@WebServlet({"/news", "/news/*"})
public class NewsController extends AbstractController {
	private static final long serialVersionUID = 5017726671091519685L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestUrl = req.getRequestURI();
		Items<Article> items = null;
		if(requestUrl.endsWith("/news") || requestUrl.endsWith("/news/")){
			items = getBusinessService().listArticles(0, Constants.LIMIT_ARTICLES_PER_PAGE);
		} else {
			String categoryUrl = requestUrl.replace("/news", "");
			items = getBusinessService().listArticlesByCategory(categoryUrl, 0, Constants.LIMIT_ARTICLES_PER_PAGE);
			Category category = getBusinessService().findCategoryByUrl(categoryUrl);
			req.setAttribute("selectedCategory", category);
		}
		req.setAttribute("list", items.getItems());
		forwardToPage("news.jsp", req, resp);
	}
}
