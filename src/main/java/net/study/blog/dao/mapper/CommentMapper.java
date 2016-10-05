package net.study.blog.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import net.study.blog.entity.Account;
import net.study.blog.entity.Comment;

public class CommentMapper extends AbstractMapper<Comment> {
	private final boolean hasAccountdata;
	public CommentMapper(boolean hasAccountdata) {
		super();
		this.hasAccountdata = hasAccountdata;
	}
	@Override
	public Comment handleItem(ResultSet rs) throws SQLException {
		Comment comment = convert.toBean(rs, Comment.class);
		comment.setIdArticle(rs.getLong("id_article"));
		if (hasAccountdata) {
			Account account = convert.toBean(rs, Account.class);
			account.setId(rs.getLong("id_account"));
			account.setCreated(rs.getTimestamp("accountCreated"));
			comment.setAccount(account);
		}
		return comment;
	}

}
