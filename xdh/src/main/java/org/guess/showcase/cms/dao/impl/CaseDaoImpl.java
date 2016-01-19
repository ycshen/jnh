package org.guess.showcase.cms.dao.impl;

import java.util.List;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.showcase.cms.dao.CaseDao;
import org.guess.showcase.cms.model.Case;
import org.springframework.stereotype.Repository;

@Repository
public class CaseDaoImpl extends HibernateDao<Case,Long> implements CaseDao{

	/**
	 * 查询方案对应的模块 
	 * @param menuPriceId 方案ID
	 * @return
	 */
	@Override
	public List<Case> findAllCaseByMenuPriceId(int menuPriceId) {
		@SuppressWarnings("unchecked")
		List<Case> list = getSession()
				.createQuery(
						"from Case as c where menuPriceId=" + menuPriceId + " order by sort asc")
				.list();
				
		return list;
	}

	/**
	 * 根据模块类型获取模块
	 * @param caseType 模块类型
	 * @return
	 */
	@Override
	public Case findCaseByCaseType(String caseType, int menuPriceId) {
		@SuppressWarnings("unchecked")
		List<Case> list = getSession()
				.createQuery(
						"from Case as c where caseType='" + caseType + "' and menuPriceId=" + menuPriceId + "")
				.list();
		
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		
		return null;
	}

}
