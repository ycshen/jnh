package org.guess.showcase.cms.aop;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.annotation.After;
import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;
import org.guess.core.utils.FreeMarkers;
import org.guess.core.utils.web.ServletUtils;
import org.guess.showcase.cms.model.Article;
import org.guess.showcase.cms.model.Site;
import org.guess.showcase.cms.service.ArticleService;
import org.guess.showcase.cms.service.CategoryService;
import org.guess.showcase.cms.service.CommentService;
import org.guess.showcase.cms.service.LinkService;
import org.guess.showcase.cms.util.CmsUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.google.common.collect.Maps;

/**
 * aop方式静态化cms模块
 * 
 * @author rguess
 * 
 */
/*@Aspect
@Component*/
public class HandleTemplate {
	
	private static Logger logger = LoggerFactory.getLogger(HandleTemplate.class);
	
	@Autowired
	private CategoryService cService;
	
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private CommentService commentService;
	
	@Autowired 
	private HttpServletRequest request;
	
	@Autowired
	private LinkService linkService;

	
	/**
	 * 静态化首页及侧边栏
	 * @throws IOException
	 */
	@After("execution(* org.guess.showcase.cms.controller.ArticleController.edit(..))||"
			+ "execution(* org.guess.showcase.cms.controller.ArticleController.delete(..))")
	public void updateMainContent()  {
		Site curSite = CmsUtil.getCurrentSite(request);
		
		//静态化主要文章内容
		Page<Article> p = new Page<Article>(new PageRequest(1, 10));
		Page<Article> page = articleService.listIndexs(curSite,p);
		String indexPath = ServletUtils.getRealPath(request)+"/WEB-INF/content/front/"+curSite.getName()+"/index.jsp";
		Map<String,Object> model = Maps.newHashMap();
		model.put("list", page.getResult());
		model.put("sliders", page.getSlider(20));
		FreeMarkers.writeFile("classpath:/template/"+curSite.getName(), "index.ftl", indexPath, model);
		
		//静态化最热文章和标签
		List<Article> hots = articleService.listHots(curSite);
		Set<String> tags = articleService.listTags(curSite);
		String sidePath = ServletUtils.getRealPath(request)+"/WEB-INF/content/front/"+curSite.getName()+"/template/sider.jsp";
		Map<String,Object> sideModel = Maps.newHashMap();
		sideModel.put("hots", hots);
		sideModel.put("tags", tags);
		FreeMarkers.writeFile("classpath:/template/"+curSite.getName(), "sider.ftl", sidePath, sideModel);
	}
	
}
