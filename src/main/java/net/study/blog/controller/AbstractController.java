package net.study.blog.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public abstract class AbstractController extends HttpServlet {
	private static final long serialVersionUID = -3582737563940584636L;
	protected final Logger LOGGER = LoggerFactory.getLogger(getClass());
	
	public final void forwardToPage (String jspPage, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("currentPage", "page/"+jspPage);
		req.getRequestDispatcher("/WEB-INF/JSP/page-template.jsp").forward(req, resp);
	}
	
	public final void forwardToFragment (String jspPage, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/JSP/fragment/"+jspPage).forward(req, resp);
	}
}
