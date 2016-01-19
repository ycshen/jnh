package org.guess.showcase.cms.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.utils.FileUtils;
import org.guess.showcase.cms.model.Article;
import org.guess.showcase.cms.model.RecomendItems;
import org.guess.showcase.cms.service.ArticleService;
import org.guess.showcase.cms.service.CategoryService;
import org.guess.showcase.cms.service.RecomendItemsService;
import org.guess.showcase.cms.util.CmsConstants;
import org.guess.showcase.cms.util.CmsUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

@Controller
@RequestMapping("/cms/article")
public class ArticleController {

	private static final String editView = "/cms/article/edit";
	private static final String listView = "/cms/";

	@Autowired
	private ArticleService aService;

	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private RecomendItemsService recomendItemsService;

	@Autowired
	private HttpServletRequest request;

	@RequestMapping(method = RequestMethod.GET, value = "/update/{id}")
	public ModelAndView update(@PathVariable("id") Long id) throws Exception {
		Article obj = aService.get(id);
		ModelAndView mav = new ModelAndView(editView);
		mav.addObject("obj", obj);
		return mav;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/create")
	public ModelAndView create() throws Exception {
		ModelAndView mav = new ModelAndView(editView);
		return mav;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/edit")
	public ModelAndView edit(
			ModelAndView mav,
			Article article,
			@RequestParam(value = "imgFile", required = false) MultipartFile imgFile)
			throws Exception {
		if (!imgFile.isEmpty()) {
			String uuidName = FileUtils.uuidFileName(imgFile.getOriginalFilename());
			String path = "upload/"+CmsConstants.ART_IMG_PATH+"/"+uuidName;
			File imgFilePath = new File(CmsUtil.getArtImgPath(request) + "/"
					+uuidName);
			imgFile.transferTo(imgFilePath);
			article.setImgpath(path);
		}
		aService.save(article);
		//添加图文推荐到图文推荐库
		this.addWeddingOrShootArticle(article);
		mav.setViewName("redirect:" + listView);
		//执行静态化
		CmsUtil.staticIndex(request);
		return mav;
	}

	@RequestMapping(value = "/delete/{id}")
	public String delete(@PathVariable("id") Long id) throws Exception {
		aService.removeById(id);
		//执行静态化
		CmsUtil.staticIndex(request);
		return "redirect:" + listView;
	}

	@RequestMapping("/delete")
	public ModelAndView delete(ModelAndView mav,
			@RequestParam("ids") Long[] ids, HttpServletRequest request) {

		System.gc();
		for (Long id : ids) {
			try {
				Article article = aService.get(id);
				aService.remove(article);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		mav.setViewName("redirect:" + listView);
		//执行静态化
		CmsUtil.staticIndex(request);
		return mav;
	}

	@RequestMapping("/page")
	public @ResponseBody
	Map<String, Object> page(Page<Article> page, HttpServletRequest request,
			@RequestParam("categoryid") String categoryid) {

		Set<String> cids = categoryService.getChlidIdsById(categoryid);
		List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(
				request, "search");
		List<PropertyFilter> orfilters = Lists.newArrayList();
		for (String id : cids) {
			orfilters.add(new PropertyFilter("EQL_category.id", id));
		}
		page.setOrderBy("createDate");
		page.setOrderDir(Sort.DESC);
		Page<Article> pageData = aService.findPage(page, filters, orfilters);
		return pageData.returnMap();
	}

	@RequestMapping("/view/{id}")
	public ModelAndView toArticle(ModelAndView mav, @PathVariable("id") Long id)
			throws Exception {
		Article article = aService.get(id);
		mav.addObject("article", article);
		mav.setViewName("/cms/article");
		return mav;
	}

	/**
	 * 加图文推荐到图文推荐库
	 * @param article
	 */
	private void addWeddingOrShootArticle(Article article){
		Long categoryId = article.getCategory().getId();
		if(categoryId == 40 || categoryId == 48){
			//婚礼策划40  婚纱摄影48
			RecomendItems items = null;
			int recomendId = Integer.parseInt(article.getId() == null ? "-1" : "" + article.getId());
			if(article.getId() == null){
				article = aService.getLastArtcileByCategoryId(categoryId);
				recomendId =Integer.parseInt("" + article.getId());
						
			}
			
			items = recomendItemsService.getRecomendItemsByRecomendId(recomendId);
			
			if(items == null){
				items = new RecomendItems();
			}
			
			items.setRecomendId(recomendId);
			items.setRecomendName(article.getTitle());
			items.setRecomendTime(new Date());
			items.setType(categoryId == 40 ? 1 : 0);
			items.setStatus(0);
			items.setImgPath(article.getImgpath());
			
			try {
				recomendItemsService.save(items);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}
}