<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="templatemo_post_wrapper">
	<div class="templatemo_post">
		<div class="callout alert">
			<c:choose>
				<c:when test="${is404 && url != null }">
				<h3>Requested resource <strong>${url }</strong> not found!</h3>
				</c:when>
				<c:when test="${is404 }">
				<h3>Requested resource not found!</h3>
				</c:when>
				<c:otherwise>
				<h3>Error, please try again later!</h3>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>