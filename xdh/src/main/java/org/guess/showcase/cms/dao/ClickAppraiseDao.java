package org.guess.showcase.cms.dao;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.cms.model.ClickAppraise;

public interface ClickAppraiseDao  extends EntityDao<ClickAppraise, Long>{
	/**
	 * 根据文章id获取点击评价
	 * @param tableName 表名
	 * @param articleId 文章id
	 * @return
	 */
	ClickAppraise findByTableAndArticleId(String tableName, Long articleId);
}
