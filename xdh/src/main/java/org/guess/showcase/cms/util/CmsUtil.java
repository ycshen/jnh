package org.guess.showcase.cms.util;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.guess.core.Constants;
import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;
import org.guess.core.utils.FreeMarkers;
import org.guess.core.utils.spring.SpringContextUtil;
import org.guess.core.utils.web.ServletUtils;
import org.guess.showcase.cms.model.Article;
import org.guess.showcase.cms.model.Link;
import org.guess.showcase.cms.model.RecomendItems;
import org.guess.showcase.cms.model.Site;
import org.guess.showcase.cms.service.ArticleService;
import org.guess.showcase.cms.service.LinkService;
import org.guess.showcase.cms.service.RecomendItemsService;
import org.guess.showcase.cms.service.SiteService;

import com.google.common.collect.Maps;

public class CmsUtil {

	private static final SiteService siteService = SpringContextUtil
			.getBean(SiteService.class);

	private static final ArticleService articleService = SpringContextUtil
			.getBean(ArticleService.class);
	
	private static final RecomendItemsService recomendItemsService = SpringContextUtil
			.getBean(RecomendItemsService.class);
	
	private static final LinkService linkService = SpringContextUtil
			.getBean(LinkService.class);

	// 保存在session中的当前站点key
	public static String CURRENT_SITE_STR = "cursite";
	// session中没有当前站点信息是根据name取出当期站点并设置进去
	public static final String DEF_SITE_NAME = "xdh";

	/**
	 * 返回文章上传路径
	 */
	public static String getArticleFilePath(HttpServletRequest request) {
		return ServletUtils.getRealPath(request) + "/"
				+ Constants.UPLOAD_FOLDER_NAME + "/"
				+ CmsConstants.ARTICLE_FOLDER_NAME;
	}

	/**
	 * 获取图片upload地址
	 */
	public static String getArtImgPath(HttpServletRequest request) {
		return ServletUtils.getRealPath(request) + "/"
				+ Constants.UPLOAD_FOLDER_NAME + "/"
				+ CmsConstants.ART_IMG_PATH;
	}

	/**
	 * 获取当前站点没有就设置
	 */
	public static Site getCurrentSite(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (null != session && null != session.getAttribute(CURRENT_SITE_STR)) {
			return (Site) session.getAttribute(CURRENT_SITE_STR);
		}
		Site site = siteService.findUniqueBy("name", DEF_SITE_NAME);
		session.setAttribute(CURRENT_SITE_STR, site);
		return site;
	}

	/**
	 * 切换站点
	 * 
	 * @param request
	 * @param name
	 */
	public static void changeSite(HttpServletRequest request, String name) {
		Site site = siteService.findUniqueBy("name", name);
		request.getSession().setAttribute(CURRENT_SITE_STR, site);
	}

	/**
	 * 静态化首页公司动态
	 */
	public static void staticCompanyArt(HttpServletRequest request) {
		PageRequest pageRequest = new PageRequest(1, 7);
		Page<Article> page = articleService.findPage(pageRequest,
				"from Article where category.name = '公司动态' order by id desc");
		Map<String,Object> model = Maps.newHashMap();
		model.put("list", page.getResult());
		String indexPath = ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/layouts/index/companyDy.jsp";
		FreeMarkers.writeFile(ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/template/", "companyDy.ftl",
				indexPath, model);
	}
	
	/**
	 * 静态化商家风采
	 */
	public static void staticDianpu(HttpServletRequest request) {
		PageRequest pageRequest = new PageRequest(1, 10);
		Page<Article> page = articleService.findPage(pageRequest,
				"from Article where category.parent.name = '商家展示' order by id desc");
		Map<String,Object> model = Maps.newHashMap();
		model.put("list", page.getResult());
		String indexPath = ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/layouts/index/dianpu.jsp";
		FreeMarkers.writeFile(ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/template/", "dianpu.ftl",
				indexPath, model);
	}
	
	/**
	 * 静态化婚礼策划资讯
	 */
	public static void staticWeddding(HttpServletRequest request) {
		PageRequest pageRequest = new PageRequest(1, 6);
		PageRequest pageRequest1 = new PageRequest(1, 1);
		PageRequest pageRequest2 = new PageRequest(2, 6);
		Page<Article> page = articleService.findPage(pageRequest,
				"from Article where category.name = '婚礼策划资讯' order by id desc");
		
		Page<Article> page1 = articleService.findPage(pageRequest1,
			"from Article where category.name = '婚礼策划资讯' order by id desc");
		
		Page<Article> page2 = articleService.findPage(pageRequest2,
		"from Article where category.name = '婚礼策划资讯' order by id desc");
		
		Map<String,Object> model = Maps.newHashMap();
		model.put("list", page.getResult());
		model.put("listo", page1.getResult());
		model.put("listt", page2.getResult());
		String indexPath = ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/layouts/index/hq.jsp";
		FreeMarkers.writeFile(ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/template/", "hq.ftl",
				indexPath, model);
	}
	
	/**
	 * 静态化婚纱摄影资讯
	 */
	public static void staticShoot(HttpServletRequest request) {
		PageRequest pageRequest = new PageRequest(1, 6);
		PageRequest pageRequest1 = new PageRequest(1, 1);
		PageRequest pageRequest2 = new PageRequest(2, 6);
		Page<Article> page = articleService.findPage(pageRequest,
				"from Article where category.name = '婚纱摄影资讯' order by id desc");
		
		Page<Article> page1 = articleService.findPage(pageRequest1,
			"from Article where category.name = '婚纱摄影资讯' order by id desc");
		
		Page<Article> page2 = articleService.findPage(pageRequest2,
		"from Article where category.name = '婚纱摄影资讯' order by id desc");
		
		Map<String,Object> model = Maps.newHashMap();
		model.put("list", page.getResult());
		model.put("listo", page1.getResult());
		model.put("listt", page2.getResult());
		String indexPath = ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/layouts/index/yj.jsp";
		FreeMarkers.writeFile(ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/template/", "yj.ftl",
				indexPath, model);
	}
	
	/**
	 * 静态化婚纱礼服租赁资讯
	 */
	public static void staticDress(HttpServletRequest request) {
		PageRequest pageRequest = new PageRequest(1, 6);
		PageRequest pageRequest1 = new PageRequest(1, 1);
		PageRequest pageRequest2 = new PageRequest(2, 6);
		Page<Article> page = articleService.findPage(pageRequest,
				"from Article where category.name = '婚纱礼服资讯' order by id desc");
		
		Page<Article> page1 = articleService.findPage(pageRequest1,
			"from Article where category.name = '婚纱礼服资讯' order by id desc");
		
		Page<Article> page2 = articleService.findPage(pageRequest2,
		"from Article where category.name = '婚纱礼服资讯' order by id desc");
		
		Map<String,Object> model = Maps.newHashMap();
		model.put("list", page.getResult());
		model.put("listo", page1.getResult());
		model.put("listt", page2.getResult());
		String indexPath = ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/layouts/index/cz.jsp";
		FreeMarkers.writeFile(ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/template/", "cz.ftl",
				indexPath, model);
	}
	
	/**
	 * 静态商场活动
	 */
	public static void staticHuodong(HttpServletRequest request) {
		PageRequest pageRequest = new PageRequest(1, 10);
		Page<Article> page = articleService.findPage(pageRequest,
				"from Article where category.name = '公司活动' order by id desc");
		Map<String,Object> model = Maps.newHashMap();
		model.put("list", page.getResult());
		String indexPath = ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/layouts/index/huodong.jsp";
		FreeMarkers.writeFile(ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/template/", "huodong.ftl",
				indexPath, model);
	}
	
	/**
	 * 静态化首页
	 */
	public static void staticIndex(HttpServletRequest request) {
		//CmsUtil.staticCompanyArt(request);
		//CmsUtil.staticDianpu(request);
		//CmsUtil.staticHuodong(request);
		CmsUtil.staticShoot(request);
		CmsUtil.staticWeddding(request);
		CmsUtil.staticDress(request);  //彩妆
	}
	
	/**
	 * 静态商场活动
	 */
	public static void staticFlinks(HttpServletRequest request) {
		PageRequest pageRequest = new PageRequest(1, 10);
		Page<Link> page = linkService.findPage(pageRequest,
				"from Link where category.id = 35 order by id desc");
		Map<String,Object> model = Maps.newHashMap();
		model.put("list", page.getResult());
		String indexPath = ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/layouts/index/flinks.jsp";
		FreeMarkers.writeFile(ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/template/", "flinks.ftl",
				indexPath, model);
	}
	
	public static void staticWeddingOrShootRecomend(HttpServletRequest request){
		PageRequest pageRequest = new PageRequest(1, 3);
		Page<RecomendItems> page_wedding = recomendItemsService.findPage(pageRequest,
				"from RecomendItems where type = 0 and status = 1 order by id desc");
		Map<String,Object> model = Maps.newHashMap();
		model.put("list_wedding", page_wedding.getResult());
		
		Page<RecomendItems> page_shoot = recomendItemsService.findPage(pageRequest,
				"from RecomendItems where type = 1 and status = 1  order by id desc");
		model.put("list_shoot", page_shoot.getResult());
		String indexPath = ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/layouts/index/weddingshoot.jsp";
		FreeMarkers.writeFile(ServletUtils.getRealPath(request)
				+ "/WEB-INF/content/front/xdh/template/", "weddingshoot.ftl",
				indexPath, model);
	}
}
