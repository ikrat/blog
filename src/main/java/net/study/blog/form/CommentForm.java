package net.study.blog.form;

public class CommentForm {
	private Long idArticle;
	private String content;
	private String authToken;
	public void setIdArticle (Long idArticle) {
		this.idArticle = idArticle;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setAuthToken(String authToken){
		this.authToken = authToken;
	}
	public Long getIdArticle() {
		return idArticle;
	}
	public String getContent() {
		return content;
	}
	public String getAuthToken() {
		return authToken;
	}
	
}
