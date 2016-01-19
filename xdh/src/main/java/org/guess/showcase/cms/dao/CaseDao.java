package org.guess.showcase.cms.dao;

import java.util.List;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.cms.model.Case;

public interface CaseDao  extends EntityDao<Case, Long>{
	/**
	 * 查询方案对应的模块 
	 * @param menuPriceId 方案ID
	 * @return
	 */
	List<Case> findAllCaseByMenuPriceId(int menuPriceId);
	
	/**
	 * 根据模块类型获取模块
	 * @param caseType 模块类型
	 * @return
	 */
	Case findCaseByCaseType(String caseType, int menuPriceId);
}
