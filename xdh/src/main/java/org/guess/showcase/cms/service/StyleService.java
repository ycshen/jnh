package org.guess.showcase.cms.service;

import org.guess.core.service.BaseService;
import org.guess.showcase.cms.model.Style;

public interface StyleService  extends BaseService<Style, Long>{
	int changeStatus(Long id);
	/**
	 * 增加点击量
	 */
	public void addHits(Style style);
	public Style getStyleByStausAndStyleType(String status, String styleType);
}
