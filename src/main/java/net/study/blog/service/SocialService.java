package net.study.blog.service;

import net.study.blog.model.SocialAccount;

public interface SocialService {

	SocialAccount getSocialAccount(String authToken);
}
