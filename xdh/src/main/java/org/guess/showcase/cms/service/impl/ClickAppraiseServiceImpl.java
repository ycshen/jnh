package org.guess.showcase.cms.service.impl;

import org.guess.showcase.cms.dao.ClickAppraiseDao;
import org.guess.showcase.cms.model.ClickAppraise;
import org.guess.showcase.cms.service.ClickAppraiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ClickAppraiseServiceImpl  implements ClickAppraiseService{

	@Autowired
	public ClickAppraiseDao clickAppraiseDao;

	/**
	 * 点击图标评价
	 * @param appraiseType 评价类型（1-好文章  2-垃圾文章 3-没看懂）
	 * @param tableName 表名
	 * @param articleId 文章id
	 */
	@Override
	public void clickAppraise(int appraiseType, String tableName, Long articleId) {
		ClickAppraise appraise = clickAppraiseDao.findByTableAndArticleId(tableName, articleId);
		if(appraise == null){
			appraise = new ClickAppraise();
			appraise.setArticleId(articleId);
			appraise.setArticleTable(tableName);
			appraise.setBad(0);
			switch (appraiseType) {
				case 1:
					appraise.setGood(1);
					appraise.setBad(0);
					appraise.setNotClear(0);
					break;
				case 2:
					appraise.setGood(0);
					appraise.setBad(1);
					appraise.setNotClear(0);
					break;
				case 3:
					appraise.setGood(0);
					appraise.setBad(0);
					appraise.setNotClear(1);
					break;
				default:
					//1
					appraise.setGood(1);
					appraise.setBad(0);
					appraise.setNotClear(0);
					break;
			}
		}else{
			switch (appraiseType) {
				case 1:
					appraise.setGood(appraise.getGood() + 1);
					break;
				case 2:
					appraise.setBad(appraise.getBad() + 1);
					break;
				case 3:
					appraise.setNotClear(appraise.getNotClear() + 1);
					break;
				default:
					//1
					appraise.setGood(appraise.getGood() + 1);
					break;
			}
		}
		
		clickAppraiseDao.save(appraise);
	}

	@Override
	public ClickAppraise findByTableAndArticleId(String tableName,
			Long articleId) {
		ClickAppraise clickAppraise = clickAppraiseDao.findByTableAndArticleId(tableName, articleId);
		
		return clickAppraise;
	}

}
