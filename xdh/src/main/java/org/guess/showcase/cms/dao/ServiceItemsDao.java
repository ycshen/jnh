package org.guess.showcase.cms.dao;

import java.util.List;

import org.guess.core.orm.EntityDao;
import org.guess.showcase.cms.model.ServiceItems;

public interface ServiceItemsDao  extends EntityDao<ServiceItems, Long>{

	/**
	 * 获取所有的服务项目
	 * @return 所有的服务项目
	 */
	List<ServiceItems> findAllSerivceItemsByParentId(int serviceItemsParentId);

}
