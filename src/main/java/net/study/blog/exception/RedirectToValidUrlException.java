package net.study.blog.exception;

public class RedirectToValidUrlException extends Exception {
	private static final long serialVersionUID = -4903286690741374887L;
	private String url;

	public RedirectToValidUrlException(String url) {
		super("Should be redirect to "+url);
		this.url = url;
	}
	public String getUrl() {
		return url;
	}
}
