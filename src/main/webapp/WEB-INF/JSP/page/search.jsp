<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="templatemo_post_wrapper">
	<div class="templatemo_post">
		<h3>
			Found <strong>${count }</strong> articles:
		</h3>
	</div>
</div>

<jsp:include page="news.jsp" />