package org.guess.showcase.blog.controller;

import java.util.List;

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
	 * 文章详细
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "blog/search", method = RequestMethod.POST)
	public ModelAndView search(@ModelAttribute SearchResult searchResult){
		ModelAndView mav = new ModelAndView("/front/jnh/blog/search/search");
		String queryString = searchResult.getQueryString();
		System.out.println(queryString);
		List<SearchResult> searchList = searchService.queryByLucene(queryString);
		try {
			LuceneSearcher.search(searchList, queryString);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("searchList", searchList);
			
		return mav;
	}
	
	
}
