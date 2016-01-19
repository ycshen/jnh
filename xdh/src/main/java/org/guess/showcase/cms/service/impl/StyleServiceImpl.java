package org.guess.showcase.cms.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.showcase.cms.dao.StyleDao;
import org.guess.showcase.cms.model.Style;
import org.guess.showcase.cms.service.StyleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StyleServiceImpl  extends BaseServiceImpl<Style, Long> implements StyleService{

	@Autowired
	public StyleDao sDao;
	@Override
	public int changeStatus(Long id) {
		Style style = sDao.get(id);

		if("0".equals(style.getStatus())){
			Style anotherStyle = sDao.getStyleByStausAndStyleType("1", style.getStyleType());
			anotherStyle.setStatus("0");
			style.setStatus("1");
			sDao.save(style);
			sDao.save(anotherStyle);
			
		}
		
		return Integer.parseInt(style.getStatus());
	}
	
	@Override
	public void addHits(Style style) {
		style.setHits(style.getHits()+1);
		sDao.save(style);
	}
	
	/**
	 * 根据风格状态和类型获取婚纱照风格
	 * @param status
	 * @param styleType
	 * @return
	 */
	@Override
	public Style getStyleByStausAndStyleType(String status, String styleType){
		return sDao.getStyleByStausAndStyleType(status, styleType);
	}

}
