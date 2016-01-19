package org.guess.showcase.cms.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.guess.core.orm.IdEntity;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 首页婚纱摄影、婚礼策划推荐
 * @author syc
 * @version 2015-08-09
 */
@Entity
@Table(name = "t_recomend_items")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class RecomendItems extends IdEntity {
		private int type; // 0-婚纱摄影 1-婚礼策划
		private int recomendId; // 推荐的ID
		private Date recomendTime; //推荐时间
		private String recomendName; //推荐图文标题
		private int status; //是否推荐  0-未推荐  1-推荐
		private String imgPath; 
		public int getType() {
			return type;
		}
		public void setType(int type) {
			this.type = type;
		}
		
		public int getRecomendId() {
			return recomendId;
		}
		public void setRecomendId(int recomendId) {
			this.recomendId = recomendId;
		}
		public Date getRecomendTime() {
			return recomendTime;
		}
		public void setRecomendTime(Date recomendTime) {
			this.recomendTime = recomendTime;
		}
		public String getRecomendName() {
			return recomendName;
		}
		public void setRecomendName(String recomendName) {
			this.recomendName = recomendName;
		}
		public int getStatus() {
			return status;
		}
		public void setStatus(int status) {
			this.status = status;
		}
		public String getImgPath() {
			return imgPath;
		}
		public void setImgPath(String imgPath) {
			this.imgPath = imgPath;
		}
		
		
}