package net.study.blog.controller.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.study.blog.Constants;
import net.study.blog.controller.AbstractController;
import net.study.blog.entity.Comment;

@WebServlet("/ajax/comments")
public class MoreCommentsController extends AbstractController{
	private static final long serialVersionUID = 6260084668402195952L;

	private int getOffset(HttpServletRequest req) {
		String val = req.getParameter("offset");
		if(val != null) {
			return Integer.parseInt(val);
		} else {
			return 0;
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int offset = getOffset(req);
		long idArticle = Long.parseLong(req.getParameter("idArticle"));
		List<Comment> comments = getBusinessService().listComments(idArticle, offset, Constants.LIMIT_COMMENTS_PER_PAGE);
		req.setAttribute("comments", comments);
		forwardToFragment("comments.jsp", req, resp);
	}
}
