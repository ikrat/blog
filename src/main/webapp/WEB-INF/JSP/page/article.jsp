<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" 	  		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 	  	uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" 	  		uri="http://java.sun.com/jsp/jstl/functions"%>


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
			<img alt="${article.title }" src="${article.logo }">
			${article.content }</div>
		</div>
	</div>
		<%-- ----------------------------------------- Social buttons ----------------------------------------- --%>
		<div class="row columns social">
			<div class="addthis_sharing_toolbox"></div>
		</div>
		<br>
		<%-- ----------------------------------------- Comments section ----------------------------------------- --%>
		<div class="comments">
			<jsp:include page="../fragment/new-comment.jsp" />
			<div id="comments-list-container">
				<jsp:include page="../fragment/comments.jsp" />				
			</div>
			<div id="comments-load-more-ctrl" class="templatemo_post_wrapper">
				<a class="button hollow expanded load-more-btn" ${article.comments> fn:length(comments) ? '' : 'style="display:none"' }>
				Load more</a>
			</div>
		</div>
