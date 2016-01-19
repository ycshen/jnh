package org.guess.showcase.cms.service;

import java.util.List;

import org.guess.core.service.BaseService;
import org.guess.showcase.cms.model.Case;

public interface CaseService  extends BaseService<Case, Long>{
	List<Case> findAllCaseByMenuPriceId(int menuPriceId);
	
	/**
	 * 根据模块类型获取模块
	 * @param caseType 模块类型
	 * @return
	 */
	public Case findCaseByCaseType(String caseType, int menuPriceId);
}
