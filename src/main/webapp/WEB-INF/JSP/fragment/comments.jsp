<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>;
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>;

<c:forEach var="comment" items="${comments }">
	<div class="templatemo_post_wrapper">
		<div class="templatemo_post">
			<div class="post_body" data-id-comment="${comment.id}">
				<img src="${comment.account.avatarExists ? comment.account.avatar : comment.account.noAvatar }" alt="${comment.account.name }"
					class="avatar" />
				<h3 class="name">${comment.account.name }</h3>
				<p>${comment.content }</p>
				<p class="meta">
					<small><fmt:formatDate type="both" value="${comment.created }" dateStyle="MEDIUM" timeStyle="SHORT" /></small> | <a
						href="javascript:reply('${comment.account.name }');">Reply</a>
				</p>
			</div>
		</div>
	</div>
</c:forEach>