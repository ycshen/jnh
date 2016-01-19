package org.guess.showcase.cms.service;

import org.guess.core.service.BaseService;
import org.guess.showcase.cms.model.Gr;

public interface GrService  extends BaseService<Gr, Long>{
	int changeStatus(Long id);
}
