package org.guess.showcase.cms.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.guess.core.orm.IdEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 套餐名称
 * @author syc
 * @version 2014-06-04
 */
@Entity
@Table(name = "t_menu_price")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class MenuPrice extends IdEntity {
	/**
	 * 套餐名称
	 */
	private String menuName;
	/**
	 * 套餐类型
	 */
	private int menuType;
	
	/**
	 * 套餐对应图片
	 */
	private String menuImageUrl;
	
	/**
	 * 套餐标语
	 */
	private String menuBanner;
	
	/**
	 * 套餐价格
	 */
	private String menuPrice;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:MM:ss")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createDate = new Date();

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getMenuType() {
		return menuType;
	}

	public void setMenuType(int menuType) {
		this.menuType = menuType;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getMenuImageUrl() {
		return menuImageUrl;
	}

	public void setMenuImageUrl(String menuImageUrl) {
		this.menuImageUrl = menuImageUrl;
	}

	public String getMenuBanner() {
		return menuBanner;
	}

	public void setMenuBanner(String menuBanner) {
		this.menuBanner = menuBanner;
	}

	public String getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(String menuPrice) {
		this.menuPrice = menuPrice;
	}
}