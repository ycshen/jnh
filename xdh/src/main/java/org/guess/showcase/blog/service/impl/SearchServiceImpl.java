package org.guess.showcase.blog.service.impl;

import java.util.List;

import org.guess.showcase.blog.dao.SearchDao;
import org.guess.showcase.blog.model.SearchResult;
import org.guess.showcase.blog.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SearchServiceImpl implements SearchService{
	@Autowired
	private SearchDao searchDao;
	@Override
	public List<SearchResult> queryByLucene(String queryString) {
		return searchDao.queryByLucene(queryString);
	}

}
