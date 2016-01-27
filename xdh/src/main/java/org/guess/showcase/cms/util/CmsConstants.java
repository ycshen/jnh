package org.guess.showcase.cms.util;

/**
 * 内容管理系统涉及变量
 * @author dview
 *
 */
public interface CmsConstants {
	
	/**
	 * 文章路径
	 */
	String ARTICLE_FOLDER_NAME = "article";
	
	/**
	 * 生成html后html的名称
	 */
	String ARTICLE_HTML_NAME = "index";
	
	/**
	 * 文章与链接图片路径
	 */
	String ART_IMG_PATH = "artimgpath";
	
	/**
	 * scroll图片地址
	 */
	String SCROLL_IMG_PATH = "scroll";
	
	/**
	 * scroll 1 2 3图片地址
	 */
	String SCROLL_IMG_ONE  = "upload/"+CmsConstants.SCROLL_IMG_PATH+"/scroll_1.png";
	String SCROLL_IMG_TWO  = "upload/"+CmsConstants.SCROLL_IMG_PATH+"/scroll_2.png";
	String SCROLL_IMG_THREE  = "upload/"+CmsConstants.SCROLL_IMG_PATH+"/scroll_3.png";
	/**
	 * 万网域名查询地址
	 */
	
	String domain_net_cn = "http://panda.www.net.cn/cgi-bin/check.cgi?area_domain=";
	
	/**
	 * 腾讯ip地址查询
	 */
	String query_ip_tencent = "";
	
	/**
	 * 新浪ip地址查询
	 */
	String query_ip_sina = "http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js&ip=";
}
