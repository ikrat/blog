package net.study.blog.service;

public interface NotificationService {

	void sendNotification(String title, String content);
	
	void shutdown();
}
