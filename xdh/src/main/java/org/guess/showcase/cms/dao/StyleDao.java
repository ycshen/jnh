package org.guess.showcase.cms.dao;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.cms.model.Style;

/**
 * 风格接口
 * @author Administrator
 *
 */
public interface StyleDao  extends EntityDao<Style, Long>{
	public Style getStyleByStausAndStyleType(String status, String styleType);
}
