<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<c:forEach var="article" items="${list }">
	<c:set var="category" value="${CATEGORY_MAP[article.idCategory] }" />
	<div class="templatemo_post_wrapper">
		<div class="templatemo_post">
			<div class="post_title">
				<a href="${article.articleLink }">${article.title }</a>
			</div>
			<div class="post_info">
				<i class="fi-folder"></i><a href="/news${category.url }">${category.name }</a>
				<i class="fi-comments"></i> <fmt:formatNumber value="${article.comments }" />comments 
				<i class="fi-clock"></i><fmt:formatDate value="${article.created }" dateStyle="FULL" timeStyle="SHORT" type="both" />
				<i class="fi-eye"></i>Hits:<fmt:formatNumber value="${article.views }" />
			</div>
			<div class="post_body">
				<a href="${article.articleLink }"><img alt="${article.title }" src="${article.logo }"></a>
				<div class="desc">${article.desc }</div>
			</div>
		</div>
	</div>
</c:forEach>

