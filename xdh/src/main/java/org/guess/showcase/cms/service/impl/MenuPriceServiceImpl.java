package org.guess.showcase.cms.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cms.dao.MenuPriceDao;
import org.guess.showcase.cms.model.MenuPrice;
import org.guess.showcase.cms.service.MenuPriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuPriceServiceImpl  extends BaseServiceImpl<MenuPrice, Long> implements MenuPriceService{

	@Autowired
	public MenuPriceDao menuPriceDao;

}
