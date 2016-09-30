package net.study.blog.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.study.blog.controller.AbstractController;

@WebServlet("/contact")
public class ContactController extends AbstractController {
	private static final long serialVersionUID = -8449154535649346968L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		forwardToPage("contact.jsp", req, resp);
	}
}
