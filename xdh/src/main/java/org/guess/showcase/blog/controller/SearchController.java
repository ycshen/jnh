package org.guess.showcase.blog.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.guess.core.utils.lucene.LuceneSearcher;
import org.guess.showcase.blog.model.SearchResult;
import org.guess.showcase.blog.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 搜索
 * @author shenyuchuan
 *
 */
@Controller
public class SearchController {
	@Autowired
	private SearchService searchService;
	/**
	 * 文章检索
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "blog/search", method = RequestMethod.POST)
	public ModelAndView search(@ModelAttribute SearchResult searchResult, HttpServletRequest request){
		ModelAndView mav = new ModelAndView("/front/jnh/blog/search/search");
		String queryString = searchResult.getQueryString();
		if(StringUtils.isBlank(queryString)){
			return mav;
		}
		
		//查询数据库的数据
		//List<SearchResult> qlist = searchService.queryByLucene(queryString);
		try {
			//Lucene检索
			//LuceneSearcher.batchAddIndex(request, qlist);
			List<SearchResult> list = LuceneSearcher.queryIndex(request, queryString);
			mav.addObject("searchList", list);	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mav;
	}
	
	
}
