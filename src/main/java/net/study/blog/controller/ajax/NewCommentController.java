package net.study.blog.controller.ajax;

import java.io.IOException;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.study.blog.controller.AbstractController;
import net.study.blog.entity.Comment;
import net.study.blog.exception.ApplicationException;
import net.study.blog.exception.ValidateException;
import net.study.blog.form.CommentForm;

@WebServlet("/ajax/comment")
public class NewCommentController extends AbstractController{
	private static final long serialVersionUID = 3528135126283961023L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			CommentForm form = createForm(req, CommentForm.class);
			Comment comment = getBusinessService().createComment(form);
			req.setAttribute("comments", Collections.singleton(comment));
			forwardToFragment("comments.jsp", req, resp);
		} catch (ValidateException e) {
			throw new ApplicationException("Invalid create comment try: "+e.getMessage(), e);
		}
	}
}
