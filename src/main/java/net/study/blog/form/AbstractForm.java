package net.study.blog.form;

import java.util.Locale;

import net.study.blog.exception.ValidateException;
import net.study.blog.model.AbstractModel;
import net.study.blog.service.I18nService;

public abstract class AbstractForm extends AbstractModel{
	protected Locale locale;

	public Locale getLocale() {
		return locale;
	}

	public void setLocale(Locale locale) {
		this.locale = locale;
	}
	
	public void validate(I18nService i18nService) throws ValidateException {
		
	}
}
