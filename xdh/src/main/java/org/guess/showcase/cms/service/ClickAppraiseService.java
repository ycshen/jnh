package org.guess.showcase.cms.service;

import org.guess.showcase.cms.model.ClickAppraise;


public interface ClickAppraiseService{
	/**
	 * 点击图标评价
	 * @param appraiseType 评价类型（1-好文章  2-垃圾文章 3-没看懂）
	 * @param tableName 表名
	 * @param articleId 文章id
	 */
	void clickAppraise(int appraiseType, String tableName, Long articleId);
	ClickAppraise findByTableAndArticleId(String tableName, Long articleId);
}
