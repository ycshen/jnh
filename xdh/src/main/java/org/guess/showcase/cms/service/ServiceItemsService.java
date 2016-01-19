package org.guess.showcase.cms.service;

import java.util.List;

import org.guess.core.service.BaseService;
import org.guess.showcase.cms.model.ServiceItems;

public interface ServiceItemsService  extends BaseService<ServiceItems, Long> {
	List<ServiceItems> findAllSerivceItemsByParentId(int serviceItemsParentId);
}
