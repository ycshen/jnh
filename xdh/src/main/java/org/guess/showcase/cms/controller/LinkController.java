package org.guess.showcase.cms.controller;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.utils.FileUtils;
import org.guess.core.web.BaseController;
import org.guess.showcase.cms.model.Link;
import org.guess.showcase.cms.service.CategoryService;
import org.guess.showcase.cms.service.LinkService;
import org.guess.showcase.cms.util.CmsConstants;
import org.guess.showcase.cms.util.CmsUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

/**
 * 链接controller
 * 
 * @author rguess
 * @version 2014-05-07
 */
@Controller
@RequestMapping("/cms/link")
public class LinkController extends BaseController<Link> {

	{
		editView = "/cms/link/edit";
		listView = "/cms/";
		showView = "/cms/link/show";
	}

	@Autowired
	private LinkService linkService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(method = RequestMethod.POST, value = "/edi")
	public String create(
			Link link,
			ModelAndView mav,
			HttpServletRequest request,
			@RequestParam(value = "imgFile", required = false) MultipartFile imgFile)
			throws Exception {
		if (!imgFile.isEmpty()) {
			String uuidName = FileUtils.uuidFileName(imgFile.getOriginalFilename());
			String path = "upload/"+CmsConstants.ART_IMG_PATH+"/"+uuidName;
			File imgFilePath = new File(CmsUtil.getArtImgPath(request) + "/"
					+uuidName);
			imgFile.transferTo(imgFilePath);
			link.setImage(path);
		}
		linkService.save(link);
		//CmsUtil.staticFlinks(request);
		return REDIRECT + listView;
	};

	@Override
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(@RequestParam("ids") Long[] ids,
			HttpServletRequest request) throws Exception {
		CmsUtil.staticFlinks(request);
		return super.delete(ids, request);
	}

	@Override
	public @ResponseBody
	Map<String, Object> page(Page<Link> page, HttpServletRequest request) {

		String categoryid = request.getParameter("categoryid");
		Set<String> cids = categoryService.getChlidIdsById(categoryid);
		List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(
				request, "search");
		List<PropertyFilter> orfilters = Lists.newArrayList();
		for (String id : cids) {
			orfilters.add(new PropertyFilter("EQL_category.id", id));
		}
		Page<Link> pageData = linkService.findPage(page, filters, orfilters);
		return pageData.returnMap();
	}
}